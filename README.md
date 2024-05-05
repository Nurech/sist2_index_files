# sist2_index_files

sist2: https://github.com/simon987/sist2

demo of sist2: [https://sist2.simon987.net/](https://sist2.simon987.net/)

Additional conf of sist2: https://github.com/simon987/sist2/blob/master/docs/USAGE.md

The script [run_setup.bat](https://github.com/Nurech/sist2_index_files/blob/main/run_setup.bat) automates running sist2 on Windows 10/11 to index your local files and make content searchable in web UI.

1. Ensure docker is running.
2. Then, running bat file will write docker-compose.yml at current dir.
3. Then bat file will run docker-compose.yml with docker.
4. Then docker will pull and run 4 images.
5. The 4 images will index all files at current run dir and open web UI where you can see the files.

Alternatively, edit and run docker-compose.yml locally.
```
1. Download and install Docker 4.22.1
2. Save run_setup.bat to desktop
3. Edit run_setup.bat "SCAN_DIR" to specify what directory needs to be scanned & indexed
    ├ default dir is %cd% (the location where run_setup.bat currently is)
    └ e.g.: drop the bat file to whatever current directory you want to be scanned and run it.
4. Run run_setup.bat
    ├ creates file 'docker-compose.yml' at run location
    ├ creates folder 'my_index' at run location to store index data
    └ runs docker-compose.yml to start containers

Tip: If something does not work, run the containers manually one by one.
    ├ make sure elastic is running and ready to accept incoming messages
    ├ for sist2 containers run order is: Scan (wait for exit) -> Index (wait for exit) -> Web
    └ or just close all docker containers and re-run run_setup.bat

Tip: In UI go to settings -> Highlight context size in characters
to increase the length of text preview

Know that docker pull for sist2 is ~292.78MiB
Elsasticsearch is ~1.24GiG.
The created index for ~40 files is ~7MiB.
Total of ~1.5GiB.
```


![image](https://user-images.githubusercontent.com/20840114/204141649-3fc81e35-2a35-4da1-a1d2-f8351dbfe7b9.png)
![image](https://github.com/Nurech/sist2_index_files/assets/20840114/f8dc50b1-9b1b-4a4b-81fc-ef671b2eafe2)
![image](https://github.com/Nurech/sist2_index_files/assets/20840114/c6676511-a04a-40e8-8996-a0817443f0e7)





