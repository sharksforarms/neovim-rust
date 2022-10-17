#!/bin/bash

sudo docker build -t vim-rust .

CONFIG_FILE="$1"

if [[ `basename $CONFIG_FILE` == neovim* ]]
then
    EDITOR_BIN="nvim"
    MOUNT_PATH="/root/.config/nvim/init.lua"
elif [[ `basename $CONFIG_FILE` == vim* ]]
then
    EDITOR_BIN="vim"
    MOUNT_PATH="/root/.vimrc"
else
    echo "Does not start with 'neovim' or 'vim' cannot select editor"
fi

CONFIG_FILE=`readlink -f $CONFIG_FILE`

echo "Editor: $EDITOR_BIN"
echo "Mount: $CONFIG_FILE -> $MOUNT_PATH"

if [[ `basename $CONFIG_FILE` == neovim* ]]
then
    sudo docker run -v $CONFIG_FILE:$MOUNT_PATH -it vim-rust /bin/bash -c "cd ~/test_app && nvim --headless -c 'sleep 5' +qa && /bin/bash"
elif [[ `basename $CONFIG_FILE` == vim* ]]
then
    sudo docker run -v $CONFIG_FILE:$MOUNT_PATH -it vim-rust /bin/bash -c "cd ~/test_app && $EDITOR_BIN -E -s -u NONE $MOUNT_PATH +so +PlugInstall +qa || /bin/bash"
else
    echo "Does not start with 'neovim' or 'vim' cannot select editor"
fi
