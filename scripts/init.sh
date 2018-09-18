###### INIT SCRIPT FOR TMUX PERSO CONFIG AND TPM (Tmux Plugin Manager) ########
### FOR THE MOMENT DEBIAN BASED OS ONLY

#Tmux useful variables
tmux_folder="$HOME/.tmux"
tpm="$tmux_folder/plugins/tpm"

#Check if TMUX already installed
if [ -z $(which tmux) ];
then
	sudo apt-get install tmux -y
fi

#check if tpm already installed
if [ ! -d $tpm ];
then
	git clone https://github.com/tmux-plugins/tpm $tpm
fi

#Copy tmux conf and run a first tmux command who ask you to enter a specific combinaison of keys for installing tmux plugins
cp .tmux.conf $HOME/.tmux.conf
cp .vimTips $HOME/.vimTips
sudo mv scripts/ux.sh /usr/bin/ux

tmux new-session \;  send-keys 'clear && for i in  {1..25}; do echo ; done  && echo please enter prefix --Ctrl+b-- + I --Shift+i-- && for i in  {1..25}; do echo ; done' c-m \;
