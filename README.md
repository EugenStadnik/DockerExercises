# DockerExercises
The repository to exercise with docker

All following examples are valid only using the UBUNTU_SERVER as main or parental or physical OS
First of all, to have an ability to work with docker - install following applications:
_
sudo apt-get remove docker docker-engine docker.io containerd runc                #To remove the previous versions of docker
sudo apt-get update                                                               #To update list of connected repositories
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
                                                                                  #To install additional usefull service applications
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -      #To add docker official gpg key
sudo apt-key fingerprint 0EBFCD88                                                 #To verify docker official gpg key is added
sudo add-apt-repository "deb \[arch=amd64\] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
                                                                   #To add only stable docker repository to the repositories list
sudo apt-get update                   #To update list of connected repositories
sudo apt-get install docker-ce        #To install the docker from attached repositories
sudo docker run hello-world           #To pull and run "hello-world" image and verify containers are runable
sudo systemctl status docker          #To verify docker daemon is running
docker -v                             #To check the docker version
sudo docker ps                        #To list running images
_

To list all available images in the images repository - just surf the https://hub.docker.com/search?q=&type=image
or type _docker search {nameOfImage}_ in your shell

_
docker pull {nameOfImage}                         #To pull specified image
docker run {nameOfImage}                          #To pull if not pulled and run specified image
sudo usermod -aG docker $USER; exit               #To add current user to "docker:x:999:" group and relogin
docker ps                                         #To list running images
docker images                                     #To list all available local docker images_
docker image rm --force {image-name:version}      #To remove local image
_
