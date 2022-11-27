set mypath=%cd%
@echo off
echo.
echo Active path: %mypath% 
echo.

rmdir /s /q .\my_index
mkdir documents

echo Made directory "documents". Move files there you want to be indexed.

docker pull docker.elastic.co/elasticsearch/elasticsearch:7.14.0 
docker pull simon987/sist2
docker-compose up -d
echo.

start chrome http://localhost:8888/

pause
