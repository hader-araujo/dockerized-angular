FROM node:latest
LABEL maintainer="Hader Araujo - https://www.linkedin.com/in/haderaraujo/"

ENV HOME=/app

COPY ./ $HOME
WORKDIR $HOME

RUN npm i -g @angular/cli --unsafe

## To build the image
# docker build --force-rm -t hader/angular-cli .

## To run the image
# docker run -it --rm --user "$(id -u):$(id -g)" -v $(pwd):/app hader/angular-cli ng <ng command>