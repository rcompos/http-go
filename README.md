# http-go

HTTP server written in Go.

Run the service from the command line (go run) or build a binary (go build) or run the existing Docker image.

Note: Run one service at a time to avoid port contention or change the Docker port mapping.

### Run HTTP service from command line

$ go run http-go

### Run HTTP service from Docker sample image

$ docker run -it --rm -p 8080:8080 rcompos/http-go

### Browse result

curl localhost:8080/example.html


### References

https://www.callicoder.com/docker-golang-image-container-example/
