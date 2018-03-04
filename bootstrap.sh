########## Variables
dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files=".bash_profile .condarc .vimrc .vim .gvimrc .zshrc .gitconfig"   # list of files/folders to symlink in homedir
##########
# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"
# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"
#install oh-my-zsh
echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp lambda-mod.zsh-theme ~/.oh-my-zsh/themes/
echo "...done"
#install fixedsys excelsior font
cp FSEX302.ttf /Library/Fonts
# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  mv ~/$file ~/dotfiles_old/
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/$file
done		
source ~/.zshrc
