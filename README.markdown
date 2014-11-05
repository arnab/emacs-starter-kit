See https://github.com/technomancy/emacs-starter-kit

# Usage
### Clone this repo
+ `git clone` this repo somewhere
+ `cd` into the cloned repo
+ `` export ESK_REPO_PATH=`pwd` ``

### Set up symlinks inside .emacs.d

+ `mkdir -p ~/.emacs.d`
+ `cd ~/.emacs.d`
+ `` ln -sf $ESK_REPO_PATH/arnab.el `whoami`.el ``
+ `` ln -sf $ESK_REPO_PATH/arnab `whoami` ``
+ `ln -sf $ESK_REPO_PATH/init.el`
+ Restart emacs. Done!
