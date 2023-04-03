# docker-sample-golang

A simple Go server example following [Docker's Go Language Guide](https://docs.docker.com/language/golang/).

## Steps
1. Build Docker Image 

   `docker build --tag docker-sample-golang .`
2. Run Container Image 

   `docker run --publish 8080:8080 docker-sample-golang`
   
   This command will publish the port 8080 for our container and run the image. If we run the docker image without publishing the port we will get a connection failure error because our container is running in isolation with no information of ports.
