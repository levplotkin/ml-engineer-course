lab-start:
	docker run -d --name jupyter-lab --rm -p 8888:8888 -v "${PWD}":/home/jovyan/work jupyter/datascience-notebook:6b49f3337709 
lab-url:
	docker logs jupyter-lab 2>&1 | grep "or http://127.0.0.1:8888/lab?token="
lab-stop:
	docker stop jupyter-lab
	
