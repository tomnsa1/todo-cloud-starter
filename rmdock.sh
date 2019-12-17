#!/bin/bash

for FILE in `docker images | grep "none"`;do
`docker rmi $FILE`;
done
