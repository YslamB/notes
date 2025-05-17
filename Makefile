deploy:
	@echo "Started building..."
	@GOOS=linux GOARCH=amd64 go build -o ./bin/menu.apet.biz ./cmd/http/main.go
	@echo "Building done"

	@echo "Stopping remote service..."
	# @ssh -p 2222 pikir@95.85.126.132 'sudo systemctl stop menu.apet.biz.service'
	@ssh -p 2222 pikir@95.85.126.132 "sudo -S systemctl stop menu.apet.biz.service"

	@echo "Deploying..."
	@scp -P 2222 ./bin/menu.apet.biz pikir@95.85.126.132:/home/pikir/menu.apet.biz/
	@scp -P 2222 ./.env pikir@95.85.126.132:/home/pikir/menu.apet.biz/
	@echo "Deploying done"

	@echo "Starting remote service..."
	@ssh -p 2222 pikir@95.85.126.132 "sudo -S systemctl start menu.apet.biz.service"
	@echo "Done"




deploy:
	@echo "Started building..."
	@GOOS=linux GOARCH=amd64 go build -o ./bin/menu.apet.biz ./cmd/http/main.go
	@echo "Building done"

	@echo "Stopping remote service..."
	@ssh pikir@95.85.126.132 'sudo systemctl stop menu.apet.biz.service'

	@echo "Deploying..."
	@scp ./bin/menu.apet.biz pikir@95.85.126.132:/home/pikir/menu.apet.biz/
	@scp ./.env pikir@95.85.126.132:/home/pikir/menu.apet.biz/
	@echo "Deploying done"

	@echo "Starting remote service..."
	@ssh pikir@95.85.126.132 'sudo systemctl start menu.apet.biz.service'
	@echo "Done"
