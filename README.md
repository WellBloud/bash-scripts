# bash-scripts
A place for storing usefull Linux commands

## usage
`$ new-project.sh test1` creates new localhost site + project folder in `~/projekty/test1`  
`$ new-project.sh test2 nette` creates new localhost site + project folder in `~/projekty/test2` and sets `document_root` to `~/projekty/test2/www`
`$ delete-project.sh test1` removes `test1.localhost` from `/etc/hosts`, deletes virtual host and deletes `~/projekty/test1` folder and all its contents
