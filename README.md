# sist2_index_files

sist2: https://github.com/simon987/sist2

demo of sist2: [https://sist2.simon987.net/](https://sist2.simon987.net/)

Additional conf of sist2: https://github.com/simon987/sist2/blob/master/docs/USAGE.md

The following script automates running sist2 on Windows 10 to index your local files and make them searchable for web UI content.
```
1. Download and install Docker 4.22.1
2. Save run_setup.bat to desktop
3. Edit run_setup.bat "SCAN_DIR" to specify what directory needs to be scanned & indexed
4. Run run_setup.bat
    ├ creates file 'docker-compose.yml' at run location
    ├ creates folder 'my_index' at run location to store index data
    └ runs docker-compose.yml to start containers

Tip: In UI go settings -> Highlight context size in characters - to increase lenght of text preview
```
Know that docker pull for sist2 is ~292.78 MB
Elsasticsearch is ~1.24 GB.
The created index for ~40 files is ~7 MB.

![image](https://user-images.githubusercontent.com/20840114/204141649-3fc81e35-2a35-4da1-a1d2-f8351dbfe7b9.png)
![image](https://user-images.githubusercontent.com/20840114/204141409-63c04954-aa90-4dda-b55b-27ccd03d0999.png)
![image](https://user-images.githubusercontent.com/20840114/204141385-551b5ee6-4a61-4171-94ee-8eeaa9ae0235.png)
![image](https://user-images.githubusercontent.com/20840114/204141481-f194bada-1c59-4ce7-82b8-9849f928dace.png)



