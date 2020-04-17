FROM tomcat:8.5.16-jre8-alpine
ADD gameoflife.war /usr/local/tomcat/webapps
CMD "catalina.sh" "run"
