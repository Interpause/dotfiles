function watch-dir --description 'watch contents of directory'
    watch -cn1 ls -al --color=force $argv
end
