# ETCD
etcdctl get --prefix ""
etcdctl user add root
etcdctl auth status
etcdctl auth enable
etcdctl --user=root:1234 user list
etcdctl --user=root:1234 get --prefix ""

# ZROK
brew install zrok
zrok enable Lg6lh20vSlX4 # u can take the token from https://api.zrok.io/
zrok share public http://localhost:3000

# GIT
git tag v0.0.4
git tag v0.0.4 -m "your commit"
git push origin v0.0.4
git init
git tag -d v0.0.4 #for delete from local
git push origin --delete v0.0.4 #delete from remote
git remote -v
git remote remove origin
git rm --cached .env
git branch -D branch_name
git branch -a
git pull origin shanazar/dev --no-ff #perform a merge
git reset --hard HEAD
git fetch -p

#PUBLIC LOCAL SERVER
zrok share public http://localhost:1404
ngrok http 3000


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
docker exec -it <container_name_or_id> sh #bash 
docker run -d --name my-neo4j --memory=2g --cpus=2 -p 7474:7474 -p 7687:7687 -e NEO4J_AUTH=neo4j/securePass3ord neo4j
docker run --name mysql-container -e MYSQL_ROOT_PASSWORD=my-secret-pw -d -p 3306:3306 mysql:latest
docker run -d --name my-redis -p 6379:6379 redis:latest --requirepass yourpassword
docker stats my-neo4j #for monitoring container status
docker cp ~/Downloads/dump.sql mysql-container:/tmp/your_dump.sql

# MYSQL
mysql -u root -p
show tables;
use my_db;


#PYTHON
pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org --proxy http://127.0.0.1:10808 surprise
python3 -m venv venv
python3 manage.py runserver
source venv/bin/activate

#SERVER
scp file.txt username@remote-server-ip:/path/to/destination
scp -P 22 user@0.0.0.0:/tmp/file.sql ~/Downloads/

#SHELL
ssh-keygen -t ed25519 -C "your_email@example.com"
        # cat ~/.ssh/id_ed25519.pub
ssh -T git@github.com
sudo journalctl -u myapp.service
sudo journalctl -u myapp.service -f
sudo cat /etc/shells
chsh -s /bin/zsh
chsh -s /usr/local/bin/fish
sudo -i -u postgres 
set -U fish_user_paths /Library/PostgreSQL/14/bin $fish_user_paths
which fish
sudo chown -R username username folderName/
sudo chown -R your_username:www-data /var/www/
sudo systemctl status postgresql.service 
ssh -i /to/pem/file/fileserver.pem user@ipaddress
sudo visudo #Passwordless sudo for Deployment User
    username    ALL=(ALL:ALL) ALL
nano ~/.ssh/config 
            Host hostname
                HostName 255.255.255.255
                User root
                Port 22
ssh hostname
         #add ssh public key to server
cat ~/.ssh/id_ed25519.pub
echo "your_ssh_public_key" >> ~/.ssh/authorized_keys
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
sudo chown -R youruser:youruser /var/www #for specific user
sudo chmod -R 777 /var/www #for all users
https_proxy=http://localhost:10808 npm i firebase-admin cors
sudo -u postgres psql
sudo -u postgres make migrate 
sudo killall -HUP mDNSResponder
sudo nano /etc/systemd/system/myapp.service
export HTTP_PROXY=http://127.0.0.1:10808
export HTTPS_PROXY=http://127.0.0.1:10808



# UBUNTU
free -h #memory usage
df -Th #disk usage
lscpu
htop
sudo apt install ~/Downloads/v2rayN-linux-64.deb
sudo systemctl daemon-reexec
sudo systemctl daemon-reload
sudo systemctl enable apetsms.service
sudo systemctl start apetsms.service
~/Applications/cursor.AppImage --no-sandbox


#NPM
sudo apt install npm
sudo npm install -g pm2
npm uninstall package_name
npm create tauri-app@latest
npm run tauri dev
pm2 start npm --name "app name" -- start
pm2 start "npm run serve" --name <app name here>


#MAC
find / -type d -name "*postgre*"
sudo nano /opt/homebrew/etc/nginx/nginx.conf
sudo nginx -s stop #start, reload
sudo /Applications/v2rayN.app/Contents/MacOS/v2rayN --install-helper # for tun mode
sudo xattr -d com.apple.quarantine Downloads/v2rayN-macos-arm64.dmg # INSTALL APP ON MAC

#RUST
cargo new project_name
cargo build
cargo run 
cargo install create-tauri-app --locked
cargo tauri build
deno run -A npm:create-tauri-app

# golang
go run -tags mock main.go # build tags


# CERBOT
sudo certbot --nginx -d han-doner.pikir.biz
sudo openssl req -new -newkey rsa:2048 -nodes -keyout sms.apet.biz.key -out sms.apet.biz.csr



# dhcp, dns, servers

