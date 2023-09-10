@echo off

:: Set the default scan directory to the current directory
set "SCAN_DIR=%cd%"

:: Check if a folder to scan is specified
if "%~1" neq "" (
    set "SCAN_DIR=%~1"
)
echo Set folder to scan: %SCAN_DIR%
echo Starting containers. Please wait (this might take a while)...
:: Output the docker-compose.yml file
(
echo ^---
echo version: "2.1" ^# For Windows users
echo.
echo services:
echo.
echo   ^# 1 Start Elasticsearch
echo   elasticsearch:
echo     image: docker.elastic.co/elasticsearch/elasticsearch:7.14.0
echo     environment:
echo       - discovery.type=single-node
echo       - "ES_JAVA_OPTS=-Xms1G -Xmx2G"
echo     ports:
echo       - 9200:9200
echo     healthcheck:
echo       test: curl -u elastic:elastic -s -f elasticsearch:9200/_cat/health ^>^>/dev/null ^^^^|| exit 1
echo       interval: 5s
echo       timeout: 60s
echo       retries: 60
echo.
echo   ^# 2 Scan the files and make a index
echo   sist2_scan:
echo     image: simon987/sist2
echo     container_name: sist2_scan
echo     restart: "no"
echo     volumes:
echo       - %SCAN_DIR%/:/tmp/es
echo       - .\my_index/:/my_index
echo     command: "scan --very-verbose --incremental /tmp/es --output /my_index/idx"
echo.
echo   ^# 3 Push index to elasticsearch
echo   sist2_index:
echo     image: simon987/sist2
echo     container_name: sist2_index
echo     restart: "no"
echo     depends_on:
echo       sist2_scan:
echo         condition: service_completed_successfully
echo       elasticsearch:
echo         condition: service_healthy
echo     volumes:
echo       - %SCAN_DIR%/:/tmp/es
echo       - .\my_index/:/my_index
echo     command: "index --very-verbose --force-reset --batch-size 1000 --es-url http://elasticsearch:9200 /my_index/idx"
echo.
echo   ^# 4 Start the web UI
echo   sist2_web:
echo     image: simon987/sist2
echo     container_name: sist2_web
echo     restart: "no"
echo     depends_on:
echo       sist2_scan:
echo         condition: service_completed_successfully
echo       sist2_index:
echo         condition: service_completed_successfully
echo       elasticsearch:
echo         condition: service_healthy
echo     ports:
echo       - "8888:8888"
echo     volumes:
echo       - %SCAN_DIR%/:/tmp/es
echo       - .\my_index/:/my_index
echo     command: "web --very-verbose --bind 0.0.0.0:8888 --es-url http://elasticsearch:9200 /my_index/idx"
echo.
echo volumes:
echo   documents:
echo     driver: local
echo   my_index:
echo     driver: local
) > docker-compose.yml

:: Pull images
docker pull docker.elastic.co/elasticsearch/elasticsearch:7.14.0
docker pull simon987/sist2

:: Run the images
docker-compose up -d

:: Start client browser
start chrome http://localhost:8888/
echo Files should be scanned, indexed, and sent to the web shortly.
pause
