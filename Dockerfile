FROM hader/angular-cli
LABEL maintainer="Hader Araujo - https://www.linkedin.com/in/haderaraujo/"

ENV HOME=/app
ENV app_name=app-name

COPY ./ $HOME
WORKDIR $HOME

ENTRYPOINT ng new $app_name

## To build the image
# docker build --force-rm -t hader/create-angular-project .

## To run the image
# docker run -it --rm --user "$(id -u):$(id -g)" -e "app_name=my-app-name" -v $(pwd):/app hader/create-angular-project
