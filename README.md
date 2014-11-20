![dotfiles](https://raw.githubusercontent.com/mscoutermarsh/dotfiles/master/autobot.jpg)

dotfiles
===================
![screenshot](https://github.com/mscoutermarsh/dotfiles/blob/master/screenshot.png)
(Here's what my setup looks like. Vim/Tmux)

## Installation

Clone this repo (or your own fork!) to your home directory.
```
$ cd ~
$ git clone https://github.com/mscoutermarsh/dotfiles
```

Install rcm

```
$ brew tap thoughtbot/formulae
$ brew install rcm
```

Run rcm
```
$ env RCRC=$HOME/dotfiles/rcrc rcup
```
### Git Config
Make sure you update ```gitconfig``` with your own name and email address. Otherwise you'll be committing as me. :smile_cat:

### Recommended

**MacVim**
```
$ brew install macvim --override-system-vim
```

**iterm2**  
Use iterm2 instead of Terminal: http://iterm2.com/

**Prezto**  
Use Prezto instead of Bash. info & installation instructions here: https://github.com/sorin-ionescu/prezto

**Tmux**  
```
$ brew install tmux
$ brew install reattach-to-user-namespace
```

#### Custom Fonts
For making Airline (vim plugin) look nice, need to use a custom font. See here: https://github.com/Lokaltog/powerline-fonts
I use sourcecode pro. Once installed, go into iterm2 and Profiles > Text. Change both fonts.


---
These are a heavily modified version of Thoughtbot's dotfiles. More detailed instructions are available here: http://github.com/thoughtbot/dotfiles.
