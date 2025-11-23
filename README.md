# Foundry VTT v13+ repository

* Download the node js zip file from https://foundryvtt.com/
 ![Page showing foundry vtt downloads](/gfx/foundry0.png?raw=true)
 Create a new folder called pkg, we will refer to this later, unpack all the files to the pkg folder. Double check that the main.js file is located inside the root of the pkg folder
 ![Screenshot of unzipped files](/gfx/foundry-1.png?raw=true)

* Clone this repository to local filesystem
* cd to repository `cd *\node-foundryvtt-13`
* run `docker build .` or `docker build -t wernerwaage/node-foundryvtt:v13 .` dont forget the period at the end.
* In docker desktop verify that the image is created:
![Image from docker desktop showing the created image](/gfx/foundry1.png?raw=true)

* Click run, IMPORTANT: in the optional settings give the image a name, set the port to 30000 and set up two volumes: the path to /pkg (node server files from foundry) and the path to /data (new data folder that you create)
![Image showing running container with created image](/gfx/foundry2.png?raw=true)
![Image highlighting the port of the foundry container](/gfx/foundry3.png?raw=true)

* Test if the image is running by opening http://localhost:30000
![Image showing the installed page where you enter your license](/gfx/foundry4.png?raw=true)

* Explore some dungeons with your friends :)


## Setting up port forwarding in your firewall
* Forward port 30000 to your computer if you want to make instance available online

## Debugging
# Server is running but you cant browse to 0.0.0.0:30000 ? Check if the port is mapped `docker ps` also check if the external port is mapped to 30000, not setting the port or setting it to 0 when running the image will generate a random external port number 


Thanks to [thomasfa18](https://github.com/thomasfa18/) for creating the original image!