FROM centos
EXPOSE 8080
COPY ./hello /hello
CMD ["/hello"]
