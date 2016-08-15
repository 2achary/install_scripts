export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/local/bin/virtualenvwrapper.sh
sudo pip install --ignore-installed six virtualenvwrapper

# for centos
pip3 install virtualenvwrapper
export WORKON_HOME=~/Envs
mkdir -p $WORKON_HOME
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.4
source /usr/bin/virtualenvwrapper.sh
source ~/.bashrc
mkvirtualenv myvenv
