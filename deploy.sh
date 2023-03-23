k3d cluster create mycluster
kubectl config use-context k3d-mycluster
# verify that the created cluster is the current cluster
kubectl config current-context

# Docker build and push
docker build -t devops-exercise . 
docker tag devops-exercise ksouvatzidaki/devops-exercise
docker login
docker push ksouvatzidaki/devops-exercise

# Deploy k8s manifests
kubectl create namespace myns

helm install devops-exercise ./devops-exercise-chart --namespace myns


