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
minikube stop
minikube image load my-image:local
minikube ssh
minikube service my-server-service --url
minikube service my-server-service


#KUBECTL
kubectl get pods
kubectl get services
kubectl get services --all-namespaces
kubectl describe service my-server-service
kubectl delete pods -l app=my-server
kubectl apply -f my_deployment.yml
kubectl delete -f my_deployment.yml
kubectl port-forward service/my-server-service 8081:80
kubectl config current-context


#DOCKER
docker build -t my-image:local .
docker build -f Dockerfile -t my_image:local .
docker tag my-image:local localhost:5000/my-image:local
docker push localhost:5000/my-image:local
docker rmi my-image:local