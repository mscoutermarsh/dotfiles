![dotfiles](https://raw.githubusercontent.com/mscoutermarsh/dotfiles/master/autobot.jpg)

dotfiles
===================

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

### Recommended
Use MacVim. This will override your vim command.
```
$ brew install macvim --override-system-vim
```

Use iterm2 instead of Terminal: http://iterm2.com/


I use Prezto, info & installation instructions here: https://github.com/sorin-ionescu/prezto

#### Custom Fonts
For making Airline (vim plugin) look nice, need to use a custom font. See here: https://github.com/Lokaltog/powerline-fonts
I use sourcecode pro. Once installed, go into iterm2 and Profiles > Text. Change both fonts.


---
These are a heavily modified version of Thoughtbot's dotfiles. More detailed instructions are available here: http://github.com/thoughtbot/dotfiles.
