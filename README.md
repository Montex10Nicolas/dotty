# Dotty

A dotfiles using **_GNU Stow_**

# Credits

https://medium.com/quick-programming/managing-dotfiles-with-gnu-stow-9b04c155ebad for better understand how Stow works
https://youtu.be/y6XCebnB9gs?si=m6B-szGdUQxOhXX6 for the inspiration

# How to use it

## Setup a new machine

### Manually

Run `stow <dir-name>` to every directory you want to install

### Automatically

Run `.auto/install.sh` to automatically run `stow` on every directory

**_Cautions_**
This script assume this repository is stored in **$HOME/dotfiles** make sure to change the script if you are using another location

## How to add new file and folder to the dotfiles

### Directly in the $HOME

If the file/folder needs to be linked to the $HOME we can place it inside _root_ folder or creating another single depth folder like _root_, for example scripts could just be moved inside root and so .oh-my-zsh I decided to split them but it's not necessary

### Inside another directory in the $HOME

If the file/folder needs to be inside another directory that is locate in $HOME we needs to create a new folder _this_ name does not matter usually, I used the name of the program stow will configure, and inside this folder you need to create the exact path that the items needs to do

So if _nvim_ is `$HOME/.config/nvim` we need to create the `.config` folder like this `~/dotfiles/whateveryouwant/.config/nvim`
