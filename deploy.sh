rm -rf jenkins-deploy
mkdir jenkins-deploy
cd jenkins-deploy
cp /tmp/workspace/CICD-Jenkinfile/gameoflife-web/target/gameoflife.war .

cat <<EOT>> Dockerfile

FROM tomcat:8.5.16-jre8-alpine
ADD gameoflife.war /usr/local/tomcat/webapps
CMD "catalina.sh" "run"
EXPOSE 8080
EOT

docker build -t mydeploy:$BUILD_NUMBER .
docker run -d -P mydeploy:$BUILD_NUMBER

