function down-docker --description 'Stops Docker daemon'
	sudo rc-service docker stop
end
