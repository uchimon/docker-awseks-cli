# docker-awseks-cli

## How to use
create .env file and fill paremeters  
`cp -p sample.env .env`

build or pull docker image.
`docker build .`
or
`docker pull uchimon/awseks-cli:latest`

run image  
`docker run -d -t --name kube-cli --env-file=./.env <docker image>`

access the container  
`docker exec -it kube-cli bash`

set up kubectl
```
# check if aws cli / eksctl works.
aws --version
eksctl version

# set up cluster info for kubectl
eksctl utils write-kubeconfig --name=${EKS_CLUSTER}
kubectl version

# now you can use kubectl on AWS EKS.
```
