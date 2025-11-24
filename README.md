# Foundry VTT v13+ repository
Here is my take on how to get Foundry VTT up and running in a docker container in less than 30 minutes
Im using the docker.desktop client to get an overview of running containers and downloaded images. This image will run without this client, but the steps below will use the client and the terminal to get the image up and running.

  
# Requirements:
* Docker desktop (for windows) https://docs.docker.com/desktop/setup/install/windows-install/
* WSL or Hyper-V (check docker documentation if unsure)
* Foundry VTT License
  
  
[![CI to Docker Hub](https://github.com/WernerWaage/node-foundryvtt/actions/workflows/docker-image.yml/badge.svg)](https://github.com/WernerWaage/node-foundryvtt/actions/workflows/docker-image.yml)
![Docker Image Version](https://img.shields.io/docker/v/wernerwaage/node-foundryvtt?sort=semver)
![Docker Image Size](https://img.shields.io/docker/image-size/wernerwaage/node-foundryvtt)
![Docker Build Date](https://img.shields.io/github/last-commit/WernerWaage/node-foundryvtt?label=last+build&logo=docker)
  
# Roll for initiative:
* Download the node js zip file from https://foundryvtt.com/
 ![Page showing foundry vtt downloads](/gfx/foundry0.png?raw=true)
 Create a new folder called pkg, we will refer to this later, unpack all the files to the pkg folder. Double check that the main.js file is located inside the root of the pkg folder
 ![Screenshot of unzipped files](/gfx/foundry-1.png?raw=true)

* Clone this repository to local filesystem
* cd to repository `cd *\node-foundryvtt`
* run `docker build .` or `docker build -t wernerwaage/node-foundryvtt:v13 .` dont forget the period at the end.
* 
* In docker desktop verify that the image is created:
![Image from docker desktop showing the created image](/gfx/foundry1.png?raw=true)

* Click run, IMPORTANT: in the optional settings give the image a name, set the port to 30000 and set up two volumes: the path to /pkg (node server files from foundry) and the path to /data (new data folder that you create)
![Image showing running container with created image](/gfx/foundry2.png?raw=true)
* Alternative: Edit the docker-compose.yml file in the root, update the paths for the volumes /pkg and /data to fit your filesystem and run `docker compose up --detach` from the root directory of the repository. This method will let you skip the settings dialog.
  

![Image highlighting the port of the foundry container](/gfx/foundry3.png?raw=true)

* Test if the image is running by opening http://localhost:30000
![Image showing the installed page where you enter your license](/gfx/foundry4.png?raw=true)

* Explore some dungeons with your friends :)


## Setting up port forwarding in your firewall
* Forward port 30000 to your computer if you want to make instance available online

## Debugging
# Server is running but you cant browse to 0.0.0.0:30000 ? Check if the port is mapped `docker ps` also check if the external port is mapped to 30000, not setting the port or setting it to 0 when running the image will generate a random external port number 


Thanks to [thomasfa18](https://github.com/thomasfa18/) for creating the original image!
