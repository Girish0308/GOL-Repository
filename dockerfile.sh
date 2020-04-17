pwd
docker build -t mydeploy:$BUILD_NUMBER .
docker run -d -P mydeploy:$BUILD_NUMBER
