FROM tomcat:9

LABEL maintainer="Kaizen"

COPY **/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["cataline.sh","run"]
