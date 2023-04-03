FROM golang:1.19

# Set destination for COPY
WORKDIR /myApp

# Download Go modules
COPY go.mod ./
COPY go.sum ./
RUN go mod download

# Copy the source code
COPY *.go ./

# Build
RUN go build -o /docker-sample-golang

EXPOSE 8080

# Run
CMD [ "/docker-sample-golang" ]
