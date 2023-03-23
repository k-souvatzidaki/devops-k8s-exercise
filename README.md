# DevOps Exercise for XM
The following commands were tested in a local Ubuntu 22.04 machine

1. Install Docker on the local machine

2. Install kubectl and k3d
```commandline
# install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

# install k3d
curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
```

3. Navigate to project directory 
```commandline
cd devops-k8s-exercise
```

4. Run deploy.sh to: 
   1. Create a cluster and switch current context to the new cluster
   2. Build and publish Docker image - For the purposes of this exercise I published my app on a public Docker Hub repository
   3. Create the "myns" namespace and install the helm chart
```commandline
/usr/bin/sh ./deploy.sh
```


5. Verify the installation with the commands in "test.sh": 
```commandline
/usr/bin/sh ./test.sh
```

