function up-svc --description 'Starts service'
	sudo rc-service $argv[1] restart
end
