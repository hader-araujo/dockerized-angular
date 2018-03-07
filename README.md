# Dockerizing @angular/cli

Some Docker images to help working on latest Angular's code

## Requirements
* Docker
* Docker compose

## Image with the @angular/cli installed  globally

#### On Docker hub
https://hub.docker.com/r/hader/angular-cli/

#### How to use
* docker pull hader/angular-cli
* docker run -it --rm --user "$(id -u):$(id -g)" -v $(pwd):/app hader/angular-cli ng <ng command>
  
#### To use the Dockerfile
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
  
#### To use the Dockerfile
* git clone https://github.com/hader-araujo/dockerized-angular
* cd dockerized-angular
* git checkout create-project
* docker build --force-rm -t hader/create-angular-project .
* docker run -it --rm --user "$(id -u):$(id -g)" -e "app_name=my-app-name" -v $(pwd):/app hader/create-angular-project

## To create and run Angular - Linux
* app_name=change-the-app-name
* git clone -b run-project --single-branch https://github.com/hader-araujo/dockerized-angular.git ./$app_name
* docker pull hader/create-angular-project
* docker run -it --rm --user "$(id -u):$(id -g)" -e "app_name=$app_name  --directory $app_name " -v $(pwd):/app hader/create-angular-project
* cd $app_name
* docker-compose build
* docker-compose up

## To create and run Angular - Windows
* set app_name=change-the-app-name
* git clone -b run-project --single-branch https://github.com/hader-araujo/dockerized-angular.git ./%app_name%
* docker pull hader/create-angular-project
* docker run -it --rm -e "app_name=%app_name%  --directory %app_name% " -v .:/app hader/create-angular-project
* cd %app_name%
* docker-compose build
* docker-compose up
