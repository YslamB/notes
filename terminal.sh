# ETCD
etcdctl get --prefix ""
etcdctl user add root
etcdctl auth status
etcdctl auth enable
etcdctl --user=root:1234 user list
etcdctl --user=root:1234 get --prefix ""


# GIT
git tag v0.0.4
git tag v0.0.4 -m "your commit"
git tag -d v0.0.4 #for delete from local
git push origin --delete v0.0.4 #delete from remote


#MINIKUBE
minikube delete
minikube start --nodes=6 --driver=docker --cpus=0.5 --memory=1800mb
minikube start -p my-cluster
minikube stop
minikube image load my-image:local
minikube image load -p my-cluster my-image:local
minikube ssh
minikube ssh -p my-cluster
minikube service my-server-service --url
minikube service my-server-service
minikube profile list
minikube profile my-cluster
minikube stop -p my-cluster
minikube delete -p my-cluster
minikube start -p my-cluster --driver=virtualbox


#KIND
kind create cluster
kind create cluster --config kind-config.yaml
kind load docker-image my-image:local


#KUBECTL
kubectl get pods
kubectl get pods -o wide
kubectl get services
kubectl get services --all-namespaces
kubectl get deployments
kubectl describe service my-server-service
kubectl delete services --all
kubectl delete pods -l app=my-server
kubectl apply -f my_deployment.yml
kubectl delete -f my_deployment.yml
kubectl port-forward service/my-server-service 8081:80
kubectl config current-context
kubectl config get-contexts
kubectl config use-context my-cluster
kubectl logs my-server-pod


#DOCKER
docker build -t my-image:local .
docker build -f Dockerfile -t my_image:local .
docker tag my-image:local localhost:5000/my-image:local
docker push localhost:5000/my-image:local
docker rmi my-image:local
docker save -o image.tar <image-name>:<tag>
sudo docker load -i image.tar


#PYTHON
python3 -m venv venv
python3 manage.py runserver


#SERVER
scp file.txt username@remote-server-ip:/path/to/destination

#SHELL
sudo cat /etc/shells
chsh -s /bin/zsh
chsh -s /usr/local/bin/fish
which fish