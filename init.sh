export topath=`pwd`/6du

git clone git@github.com:6du-space/6du.git $topath --depth=1

git config --global alias.st status
git config --global alias.rpull '!git pull $1 && git submodule foreach --recursive "git pull origin master --recurse-submodules"'
git config --global alias.rp rpull

cd $topath

git config oh-my-zsh.hide-status 1
git submodule update --init --recursive
git submodule foreach --recursive "git checkout master"
git submodule foreach --recursive "git pull origin master --recurse-submodules"

