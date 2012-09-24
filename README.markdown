See https://github.com/technomancy/emacs-starter-kit

# Usage
### Clone this repo
* `git clone` this repo somewhere
* `cd` into there
* `export ESK_REPO_PATH=`pwd``

### set up symlinks inside .emacs.d
* `mkdir -p ~/.emacs.d`
* `cd ~/.emacs.d`
* ln -sf $ESK_REPO_PATH/arnab.el `whoami`.el
* ln -sf $ESK_REPO_PATH/arnab `whoami`
* Restart emacs. Done!
