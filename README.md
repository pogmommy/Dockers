#Pogmom's Docker Composes

Docker composes are separated by branches corresponding to the machine they will be run on. Please change branches to view the docker composes.

##Usage:

1. clone desired branch `git clone -b branchname --single-branch https://github.com/pogmommy/Dockers.git && cd Dockers`
2. move or copy .env_template to .env `cp .env_template .env`
3. edit .env as needed to fill in your appropiate values- be sure to check out the projects linked in docker-compose.yml for documentation 
4. edit docker-compose.yml to fit your needs
5. build and run containers `sudo docker-compose up -d`
6. follow any other setup needed according to the relevant containers
