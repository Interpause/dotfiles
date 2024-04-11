function tmosh --description 'Start mosh into tmux immediately'
	mosh $argv[1] -- tmux new -ADs0
end
