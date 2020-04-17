FROM tomcat:8.5.16-jre8-alpine
ADD /tmp/workspace/CICD-Jenkinfile/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps
CMD "catalina.sh" "run"
EXPOSE 8080
