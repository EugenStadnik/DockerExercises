# DockerExercises
The repository to exercise with docker

All following examples are valid only using the UBUNTU_SERVER as main or parental or physical OS
First of all, to have an ability to work with docker - install following applications:

sudo apt-get remove docker docker-engine docker.io containerd runc                To remove the previous versions of docker
sudo apt-get update                                                               To update list of connected repositories
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
                                                                                  To install additional usefull service applications
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -      To add docker official gpg key
sudo apt-key fingerprint 0EBFCD88                                                 To verify docker official gpg key is added
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
      To add only stable docker repository to the repositories list
sudo apt-get update                   To update list of connected repositories
sudo apt-get install docker-ce        To install the docker from attached repositories
sudo systemctl status docker          To verify docker daemon is running
docker -v                             To check the docker version
sudo docker run hello-world           To pull and run "hello-world" image and verify containers are runable
sudo docker ps                        To list running images
sudo usermod -aG docker $USER; exit   To add current user to "docker:x:999:" group and relogin

To list all available images in the images repository - just surf the https://hub.docker.com/search?q=&type=image
or type _docker search {imageName}_ in your shell
To create your own image configure "Dockerfile" in a separate directory then run:
docker build -t {customImageName}:{customImageVersion} {folderToPlaceImage}

docker login -u {userName} -p {password}        To login to docker hub before push and/or pull
docker push {userName}/{imageName}:{imageVersion}     To push to docker hub
docker pull {imageName}                         To pull specified image
docker pull {userName}/{imageName}:{imageVersion}     To pull your own image
docker images                                   To list all available local docker images
docker tag {imageName}:{imageVersion} {newImageName}:{newImageVersion}      To copy the image
docker run {imageName}                          To pull if not pulled and run specified image
docker run -d {imageName}                       To pull if not pulled and run specified image as a deamon
docker run -it -p {outerPort}:{innerPost} {imageName}
      To pull if not pulled and run specified image interactivelly and redirect internal conteiner's {innerPort} port to external {outerPort}
docker ps                                       To list running images
docker ps -a                                    To show all containers ever ran
docker exec {containerName} {shellCMD}          To run commad inside the container
docker exec -it {containerName} /bin/bash       To get the container's shell instead of ssh
docker cp {localPathToFile} {cintainerId}:{cintainerPath}     To copy files inside the container instead of scp
docker cp {cintainerId}:{cintainerPathToFile} {localPath}     To copy file from container to local instead of scp
docker commit {cintainerId} {newImageName}:{newImageVersion}      To create image from running container saving all it's state
docker stop {cintainerId}                       To gentally stop the container
docker kill {cintainerId}                       To force stop the container
docker start {cintainerId}                      To restart already stoped cotntainer with the all it's state

docker rm {cintainerId}                         To remove container only when it is not running
docker rmi {imageName:version} | {imageId}      To remove image only when no containers left
docker image rm --force {imageName:version}     To remove local image without container (decreases hdd free space)
