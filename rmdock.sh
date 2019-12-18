#!/bin/bash

for FILE in `docker images | grep "none"`;do
  if [ $FILE != "juniornsa/todo-*" ]; then
	  echo "file doesnt have the name on it , must be deleted"
	  `docker rmi $FILE`
  fi
done
