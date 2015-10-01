
dest="$HOME/Dropbox/Backups/config_files"

echo "Respaldando en $dest"
mkdir -p $dest

#sublimetext conf
cp "/Users/francisco/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings" $dest/Preferences.sublime-settings

#zsh
cp ~/.zshrc $dest/zshrc