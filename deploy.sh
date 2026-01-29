#!/bin/bash

DEPLOY_DIR=/opt/jenkins-app

sudo mkdir -p $DEPLOY_DIR
sudo cp app.sh $DEPLOY_DIR/
sudo chmod +x $DEPLOY_DIR/app.sh

echo "Application deployed to $DEPLOY_DIR"
