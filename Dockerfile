FROM golang:1.11-alpine

# Maintainer
LABEL maintainer="Ron Compos <rcompos@gmail.com>"

# Current Working Directory inside the container
WORKDIR $GOPATH/src/github.com/rcompos/http-go

# Copy everything from the current directory to the PWD(Present Working Directory) inside the container
COPY . .

# Download all the dependencies
RUN go get -d -v ./...

# Install the package
RUN go install -v ./...

# Expose port 8080
EXPOSE 8080

# Run
CMD ["http-go"]
