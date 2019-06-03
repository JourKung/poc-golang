# baase image for go application
FROM golang:1.12.5-alpine3.9
# create an /app directory within image that will hold application source files
RUN  mkdir /app
# To copy everything in the root directory into /app directory
ADD . /app
# To specify inside /app directory
WORKDIR /app
# To build the binary
RUN go build -o main .
# To start command
CMD ["/app/main"]

## Notes
# 
# build image: 
# > docker build -t demo-go-app .
# run image: 
# > docker run -p 3000:3001 -it demo-go-app
#   -p 8080:8081 - This exposes our application which is running on port 8081 
#   within our container on http://localhost:8080 on our local machine.
#   it - This flag specifies that we want to run this image in interactive mode with a tty for this container process.
#   demo-go-app - This is the name of the image that we want to run in a container.
#
##  Running our Container In the Background
#    You’ll notice that if we ctrl-c this within the terminal, 
#    it will kill the container. If we want to have it run permanently in the background, 
#    you can replace -it with -d to run this container in detached mode.
#
#    If we then wanted to kill this container, 
#    we could do so by using the docker kill command and pass in that container ID that is prints out in the terminal.