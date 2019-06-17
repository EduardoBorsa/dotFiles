function cocozaoDoCaralho
{
  echo "Hello World"
}

function source_nvm
{
  source /usr/share/nvm/init-nvm.sh
}

function login_espec
{
  sh ~/Eduardo_Borsa/login_spec.sh
}

function docker_stop_all_containers
{
  docker stop $(docker ps -aq)
}

function docker_remove_all_containers
{
  docker rm $(docker ps -aq)
}

function docker_remove_all_images
{
  docker rmi $(docker images -q)
}

function ctags_here
{
  ctags -R --exclude=.git --exclude=node_modules --exclude=test
}
