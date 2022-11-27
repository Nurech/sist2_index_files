# sist2_index_files

sist2: https://github.com/simon987/sist2

demo of sist2: [https://sist2.simon987.net/](https://sist2.simon987.net/)

additional conf of sist2: https://github.com/simon987/sist2/blob/master/docs/USAGE.md

```
1. Clone start.bat and docker-compose.yml to any folder e.g. ~\sist
2. Install Docker on Windows, make sure Docker is running and ready
3. Run start.bat to make folders and launch Docker Composer
4. Place files in folder \documents (created by start.bat), which you want to index
5. Sist2 from Docker will index files in \documents and send to elasticsearch
6. Sist2 will run web interface at http:\\0.0.0.0:8080 serving UI and your files
7. If someting fails (indexing or sending the index) just restart the indivdual container in Docker to repeat a step
8. or just run start.bat again until it works :)

Tip: In UI go settings -> Highlight context size in characters - to increase lenght of text preview
```
Know that docker pull for sist2 is ~292.78 MB and elsasticsearch ~1.24 GB.

The ceated index for ~40 files is ~7 MB.

![cmd](https://user-images.githubusercontent.com/20840114/204127663-3a9e5bff-7631-4e9e-b295-a2a2ef1b9e84.PNG)
![docker](https://user-images.githubusercontent.com/20840114/204127667-ee578eb9-d0d8-4aea-92ab-25bfa2d09706.PNG)
![folder](https://user-images.githubusercontent.com/20840114/204127671-117d0c11-365e-491d-bead-bc8605fefdb4.PNG)
![image](https://user-images.githubusercontent.com/20840114/204129099-f94216dd-90b7-4f9a-8091-2d5b2b002ad0.png)
![screen1](https://user-images.githubusercontent.com/20840114/204127676-72ca45bd-f613-49a5-8b7a-c786280d78f4.PNG)
![image](https://user-images.githubusercontent.com/20840114/204129147-0f206971-e464-4cba-82d9-497e5e03d222.png)

