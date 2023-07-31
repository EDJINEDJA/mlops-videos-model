initialize:
	@echo "git initialize ..."
	git init
install:
	@echo "install dependencies ..."
	pipenv --python $(version)
	pipenv run pre-commit install
	pipenv shell
	sleep 1
	pipenv run pip install -r requirements.txt
	chmod -x deploy.sh
activate:
	@echo "virtualenv activate ..."
	pipenv shell
setup: initialize install
