# flask-app-ecs
This repository explains how to write a multi-stage Dockerfile so that the base image of Python:3.9 reduced by about 70% in size from 1GB to 142MB.
How ?
Step 1: clone the repo
Step 2:build image from Dockerfile --> $ docker build -t imageName:tag .
step 3: see size of image ---> $ docker images
Step 4: create and run a container ---> $ docker run -d -p 80:80 imageName:tag
step 5: show container ---> $ docker ps
step 6: see running app ----> go to google --> localhost
congratulation!!! your app is successfully run
