# sist2_index_files

sist2: https://github.com/simon987/sist2

demo of sist2: [https://sist2.simon987.net/](https://sist2.simon987.net/)

additional conf of sist2: https://github.com/simon987/sist2/blob/master/docs/USAGE.md

```
1. Clone start.bat and docker-compose.yml to any folder e.g. ~\sist2
2. Install Docker on Windows, make sure Docker is running and ready
3. Run start.bat to make folders and launch Docker Composer
4. Place files in folder sist2\documents, which you want to index
5. Sist2 from Docker will index files, store intex at sist2\my_index, sends idx to elasticsearch
6. Sist2 will run web interface at http:\\localhost:8888 serving UI and your files
7. If someting fails (indexing or sending the index) just restart the indivdual container in Docker to repeat a step
8. or just run start.bat again until it works :)

Tip: In UI go settings -> Highlight context size in characters - to increase lenght of text preview
```
Know that docker pull for sist2 is ~292.78 MB and elsasticsearch ~1.24 GB.

The ceated index for ~40 files is ~7 MB.

![image](https://user-images.githubusercontent.com/20840114/204141649-3fc81e35-2a35-4da1-a1d2-f8351dbfe7b9.png)
![image](https://user-images.githubusercontent.com/20840114/204141409-63c04954-aa90-4dda-b55b-27ccd03d0999.png)
![image](https://user-images.githubusercontent.com/20840114/204141385-551b5ee6-4a61-4171-94ee-8eeaa9ae0235.png)
![image](https://user-images.githubusercontent.com/20840114/204141481-f194bada-1c59-4ce7-82b8-9849f928dace.png)



