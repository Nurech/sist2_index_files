# sist2_index_files

sist2: https://github.com/simon987/sist2

additional conf of sist2: https://github.com/simon987/sist2/blob/master/docs/USAGE.md

1. Clone start.bat and docker-compose.yml to any folder e.g. ~\sist
2. Install Docker on Windows
3. Run start.bat to make folders and launch Docker Composer
4. Place files in folder \documents (created by start.bat), which you want to index
5. Sist2 from Docker will index files in \documents and send to elasticsearch
6. Sist2 will run web interface at [http:\\0.0.0.0:8080](http:\\0.0.0.0:8080) serving UI and your files
7. If someting failes (indexing or sending the index) just restart the indivdual container in Docker to repeat a step

![cmd](https://user-images.githubusercontent.com/20840114/204127663-3a9e5bff-7631-4e9e-b295-a2a2ef1b9e84.PNG)
![docker](https://user-images.githubusercontent.com/20840114/204127667-ee578eb9-d0d8-4aea-92ab-25bfa2d09706.PNG)
![folder](https://user-images.githubusercontent.com/20840114/204127671-117d0c11-365e-491d-bead-bc8605fefdb4.PNG)
![screen1](https://user-images.githubusercontent.com/20840114/204127676-72ca45bd-f613-49a5-8b7a-c786280d78f4.PNG)
