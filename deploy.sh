k3d cluster create mycluster

# Docker build and push
docker build -t devops-exercise . 
docker tag devops-exercise ksouvatzidaki/devops-exercise
docker login
docker push ksouvatzidaki/devops-exercise

# Deploy k8s manifests
kubectl create namespace myns

cd /home/konstantina/Desktop/XM_devops_exercise
helm install devops-exercise ./devops-exercise-chart --namespace myns


