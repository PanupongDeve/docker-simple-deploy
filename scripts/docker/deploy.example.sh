export DOCKER_USER_NAME=
export DOCKER_ACCESS_TOKEN=
export DOCKER_TAG=
export DOCKER_REPO=

cp docker-env/prod.Dockerfile Dockerfile

docker login -u $DOCKER_USER_NAME -p $DOCKER_ACCESS_TOKEN

docker build -t $DOCKER_USER_NAME/$DOCKER_REPO:$DOCKER_TAG .

docker image ls

docker push $DOCKER_USER_NAME/$DOCKER_REPO:$DOCKER_TAG