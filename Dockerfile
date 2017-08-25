# Start by building the application.
FROM golang:1.9

WORKDIR /go/src/app
COPY . .

RUN go-wrapper download   # "go get -d -v ./..."
RUN go-wrapper install

# Now copy it into our base image.
FROM gcr.io/distroless/base
COPY --from=0 /go/bin/app /
CMD ["/app"]
