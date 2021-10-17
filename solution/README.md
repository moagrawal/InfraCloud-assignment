First I ran the container using "docker run -it infracloudio/csvserver:latest" this command,it gave error :- "2021/10/17 13:20:46 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: no such file or directory"

Then I created the gencsv.sh file . After that I ran this command - "docker run -itd -v ${PWD}/inputFile:/csvserver/inputdata infracloudio/csvserver:latest".

I entered into the container by running this command "docker exec -it gifted_knuth /bin/bash" 
After that I checked the port usng - "netstat -tulpn"
I exposed the port t0 9393 by running this command "docker run -p 9393:9300 -v ${PWD}/inputFile:/csvserver/inputdata infracloudio/csvserver:latest"
After the application was running, then I stopped the container and ran the container with the environment variable using -
"docker run -p 9393:9300 -e CSVSERVER_BORDER=orange -v ${PWD}/inputFile:/csvserver/inputdata infracloudio/csvserver:latest"
