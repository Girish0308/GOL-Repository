cd /tmp/workspace/CICD-Jenkinfile/jenkins-deploy
cp /tmp/workspace/CICD-Jenkinfile/Dockerfile . 

docker build -t mydeploy:$BUILD_NUMBER .
docker run -d -P mydeploy:$BUILD_NUMBER
                                    
