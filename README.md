![dotfiles](https://raw.githubusercontent.com/mscoutermarsh/dotfiles/master/autobot.jpg)

dotfiles
===================
![screenshot](https://github.com/mscoutermarsh/dotfiles/blob/master/screenshot.png)
(Here's what my setup looks like. Vim/Tmux)

## Installation

Clone this repo (or your own fork!) to your **home** directory (`/Users/username`).
```
$ cd ~
$ git clone https://github.com/mscoutermarsh/dotfiles
```

Install rcm

```
$ brew tap thoughtbot/formulae
$ brew install rcm
```

Run rcm (this command expects that you cloned your dotfiles to `~/dotfiles/`)
```
$ env RCRC=$HOME/dotfiles/rcrc rcup
```
RCM creates dotfile symlinks (`.vimrc` -> `/dotfiles/vimrc`) from your home directory to your `/dotfiles/` directory.

### Installing Plugins
Plugins are listed in `vimrc.bundles`.

To install them you'll need vundle. Installation directions are here: https://github.com/gmarik/Vundle.vim.
Once vundle is installed. Open vim (`$ vim`) and type `:BundleInstall`. And then restart vim. You'll need to do this for all the plugins to work.

### Git Config
Make sure you update ```gitconfig``` with your own name and email address. Otherwise you'll be committing as me. :smile_cat:

**iterm2**  
Use iterm2 instead of Terminal: http://iterm2.com/

#### Custom Fonts
You'll need to use a custom font for Airline to look nice. (Seeing weird symbols? This is why!). See here: https://github.com/Lokaltog/powerline-fonts
I use sourcecode pro. Once installed, go into iterm2 and Profiles > Text. Change both fonts.

### Recommended

**MacVim**
By default OSX has an older version of Vim installed. I recommend installing MacVim and running it from within iterm2. This can be done with brew.
```
$ brew install macvim --override-system-vim
```
This overwrites your default Vim installation. You should restart terminal after installing.

**Prezto**  
I use Prezto instead of Bash. Info & installation instructions here: https://github.com/sorin-ionescu/prezto

**Tmux**  
```
$ brew install tmux
$ brew install reattach-to-user-namespace
```

---
These are a heavily modified version of Thoughtbot's dotfiles. More detailed instructions are available here: http://github.com/thoughtbot/dotfiles.

#### Contributing
Did you have trouble installing this? Could I make the documentation better? Let me know [@mscccc](http://twitter.com/mscccc). Or please fork & create a pull request with your suggestions.
