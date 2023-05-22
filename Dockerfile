# Use the official Go Docker image with Go 1.20 as the base image
FROM golang:1.20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY hello.go .

# Build the Go program inside the container
RUN go build -o hello

# Set the command to run the executable when the container starts
CMD ["./hello"]
