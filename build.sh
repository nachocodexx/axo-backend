#!/bin/bash
# readonly IMAGE_TAG=${1:-0.0.1a0}
readonly IMAGE=${1:-axo:backend}
readonly PUSH_FLAG=${2:-0}



docker build -f ./Dockerfile -t $IMAGE .

if [ "$PUSH_FLAG" -eq 1 ]; then
	echo "Pushing image: $IMAGE"
	docker push $IMAGE
else
	echo "Skipping push"
fi 
