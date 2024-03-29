# I'm finally putting my vim configuration into source control

## Installation
Clone the repo like this:

`git clone --recurse-submodules https://github.com/jonnypolite/vim-things.git ~/.vim`

Then make a symlink to the new vimrc:

`ln -s ~/.vim/vimrc ~/.vimrc`

## Plugins
[Pathogen](https://github.com/tpope/vim-pathogen) loads plugins from the `bundle` directory.
The cool plugins will have Git repos so that you can install them into `bundle` as a submodule.

This is how I installed the [Dracula theme](https://draculatheme.com/vim/):

`git submodule add https://github.com/dracula/vim.git bundle/dracula-theme`

## Updating submodules (plugins) to the latest versions
This seems to work:
```
git pull --recurse-submodules
git submodule update --remote --recursive
```

## Submodule dirs are empty?
Try this:
```
git submodule init
git submodule update
```

## Change your mind about a submodule?
```
git rm -r subModuleName
rm -rf .git/modules/subModuleName
```
