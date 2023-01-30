function up-docker --description 'Starts Docker daemon'
	sudo rc-service docker start
end
