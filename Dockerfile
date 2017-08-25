FROM centos
EXPOSE 8080
COPY ./hello-world /hello-world
CMD ["/hello-world"]
