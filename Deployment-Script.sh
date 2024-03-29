#!/bin/bash
# Deployment script to deploy a web application

SERVERS=("server1" "server2" "server3")
USER="username"
APP_DIR="/var/www/myapp"

for server in "${SERVERS[@]}"; do
    echo "Deploying to $server"
    scp -r /path/to/local/app $USER@$server:$APP_DIR
    ssh $USER@$server "sudo systemctl restart myapp.service"
done

#Automated Deployment Script:

#Scenario: Automate the deployment process to multiple servers without human intervention.
#Example: Deploying a web application to multiple servers.
#Output: The web application will be deployed to each server listed in the SERVERS array, and the service will be restarted.
