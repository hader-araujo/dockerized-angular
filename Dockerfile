FROM hader/angular-cli
LABEL maintainer="Hader Araujo - https://www.linkedin.com/in/haderaraujo/"

COPY package.json ./
RUN npm i && mkdir /app

WORKDIR /app
ENTRYPOINT  cp -R /node_modules /app  && npm start-docker 
EXPOSE 4200 49153

## To build the image without docker-compose
# docker build --force-rm -t hader/angular-run .

## To run the image without docker-compose
# docker run -it  --rm --user "$(id -u):$(id -g)" -p "4200:4200" -p "49153:49153" -v $(pwd):/app hader/angular-run
