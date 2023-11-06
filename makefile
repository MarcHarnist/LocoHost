## ============ SERVER ============

serv: ## Launch PHP 
	cd C:\Users\marc\Desktop\projet && powershell -Command "Start-Process 'php' '-S localhost:80' -NoNewWindow"
	php -S localhost:8080
.PHONY: serv

php: ## Lauch Php server
	php -S 127.0.0.1:8000 -t ./homepage
.PHONY: php


light: ## Launch Light CMS in browser
	php -S 127.0.0.1:8000 -t ./
.PHONY: light

stop: ## Stop PHP and Apache
	npx kill-port 8080
	npx kill-port 80
.PHONY: stop

hello: ## Say "Hello" in terminal
	@echo "Hello it's Marc"
.PHONY: hello