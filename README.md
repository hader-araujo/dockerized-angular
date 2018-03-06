# Dockerizing @angular/cli

Some Docker images to help working on latest Angular's code

## Requirements
* Docker

## Image with the @angular/cli installed  globally

#### On Docker hub
https://hub.docker.com/r/hader/angular-cli/

#### How to use
* docker pull hader/angular-cli
* docker run -it --rm --user "$(id -u):$(id -g)" -v $(pwd):/app hader/angular-cli ng <ng command>
  
#### To user the Dockerfile
* git clone https://github.com/hader-araujo/dockerized-angular
* cd dockerized-angular
* git checkout angular-cli
* docker build --force-rm -t hader/angular-cli .
* docker run -it --rm --user "$(id -u):$(id -g)" -v $(pwd):/app hader/angular-cli ng <ng command>

## Image to create an Angular project

#### On Docker hub
https://hub.docker.com/r/hader/create-angular-project/

#### How to use
* docker pull hader/create-angular-project
* docker run -it --rm --user "$(id -u):$(id -g)" -e "app_name=my-app-name" -v $(pwd):/app hader/create-angular-project
  
#### To user the Dockerfile
* git clone https://github.com/hader-araujo/dockerized-angular
* cd dockerized-angular
* git checkout create-project
* docker build --force-rm -t hader/create-angular-project .
* docker run -it --rm --user "$(id -u):$(id -g)" -e "app_name=my-app-name" -v $(pwd):/app hader/create-angular-project
