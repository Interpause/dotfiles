function bat-kill --description 'Kill all unnecessary stuff on battery saving'
	# Who needs calendar & contacts anyways? Bloat
	akonadictl stop
	# Panon Audio Visualizer
	pkill -f panon.backend.client
	# Audio is unnecessary
	killall pipewire
	killall wireplumber
end
