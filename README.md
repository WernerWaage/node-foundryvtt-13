# Foundry VTT v13+ repository

* Clone this repository to local filesystem
* cd to repository `cd *\node-foundryvtt-13`
* run `docker build .` or `docker build -t wernerwaage/node-foundryvtt:v13 .` dont forget the period at the end.
* In docker desktop verify that the image is created
* Click run, IMPORTANT: in the optional settings give the image a name, set the port to 30000 and set up two volumes: the path to /pkg (node server files from foundry) and the path to /data (new data folder that you create)
* Test if the image is running by opening http://localhost:30000


![Foundry1](/gfx/foundry1.png?raw=true)
![Foundry2](/gfx/foundry2.png?raw=true)
![Foundry3](/gfx/foundry3.png?raw=true)
![Foundry4](/gfx/foundry4.png?raw=true)


## Debugging
# Server is running but you cant browse to 0.0.0.0:30000 ? Check if the port is mapped `docker ps` also check if the external port is mapped to 30000, not setting the port or setting it to 0 when running the image will generate a random external port number 



It expects that you will mount path /pkg and /data to it  
- /pkg contains your licensed node.js version of foundry (where you extracted the zip file) 
- /data contains your userdata

how you map them its up to you and your container config on docker
