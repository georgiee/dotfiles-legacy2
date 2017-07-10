# Dotfiles

+ Install [rcm](https://github.com/thoughtbot/rcm)

## RC Files
```
# Clone this repository
git clone git@github.com:georgiee/dotfiles2.git ~/.dotfiles

# Install zprezto
git clone https://github.com/sorin-ionescu/prezto ~/.dotfiles/zsh/.zprezto && cd ~/.dotfiles/zsh/.zprezto && git submodule update --init --recursive

# Sync dotfiles with home directory
RCRC='rcrc' rcup -v

# Preview with
RCRC='rcrc' lsrc

```
## Other
+ VisualCode and with Settigns Sync through gist
+ vim tbd

## Alternative 
Maybe try the config & git bare approach ?
https://news.ycombinator.com/item?id=11070797
