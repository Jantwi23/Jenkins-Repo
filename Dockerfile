#baseImage
FROM centos:7

#Discripton
LABEL Discripton="Dockerfile to containerize an apache app"

#update all packages 
RUN yum -y update

#install apache on continer 
RUN yum install -y httpd


#copy app + dependencies inside container

COPY index.html /var/www/html

#port the container will listen on 
EXPOSE 80

#start apache
ENTRYPOINT [ "/usr/sbin/httpd" ]


#Run container in the backgrond
CMD [ "-D", "FOREGROUND"  ]

