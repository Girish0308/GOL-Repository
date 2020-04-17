FROM tomcat:8.5.16-jre8-alpine
COPY /tmp/workspace/CICD-Jenkinfile/jenkins-deploy/gameoflife.war /usr/local/tomcat/webapps
CMD "catalina.sh" "run"
EXPOSE 8080
