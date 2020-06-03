# my-workstation
:computer: Configs, plugins, programs I use at my workstation

### Chrome extensions
* HTTPS everywhere
* uBlock Origin
* FlowCrypt
* Bitwarden
* Vue Devools
* Netcraft Extenstion
* Authenticator
* Stylus
* Privacy Badger
* Tab Pinner
* Daily
* Pesticide

### Dev
* VSCodium
* Sublime Text 2 + Material theme https://github.com/equinusocio/material-theme
* NVM https://github.com/creationix/nvm

### Other productivity related software
* htop
* iotop
* exa https://github.com/ogham/exa
* Terminator 
* Albert / Cerebro
* Anoise http://anoise.tuxfamily.org/

### Other software
* gufw
* Telegram 
* Redshift
* Steam
* Brave browser 
* VLC
* Ledger Live
* Quod Libet
* UNetbootin (for creating bootable USBs)
* GParted
* Balena Etcher

# Configs

### Git config
* See gist

### ssh config
For signed commits
```
Host gitlab.com
   Hostname gitlab.com
   PreferredAuthentications publickey
   Port 222
   AddKeysToAgent yes
   UseKeychain yes
   IdentityFile ~/.ssh/gitlab_nov

Host bitbucket.org
  Hostname bitbucket.org
  PreferredAuthentications publickey
  IdentityFile ~/.ssh/id_rsa_bitbucket_sep
```

### bashrc
Don't forget ```source ~/.bashrc```
```bash
# Set default editor
export EDITOR=code

alias grep='grep --color=auto'
alias ll='ls -alF'
alias edit='code' 
alias h='history'
alias brc='nano ~/.bashrc'
alias pushy='npm version patch && git push && git push --tags'
alias workie='sudo openconnect vpn.xxxxxxxx.com'
alias servach='python -m SimpleHTTPServer 8086'

alias loadbash='source ~/.bash_profile'     # Load bash profile
alias edithosts='code /etc/hosts'           # Edit hosts file
alias editbash='code ~/.bash_profile'       # Edit bash profile
alias editsshconfig='code ~/.ssh/config'    # Edit ssh config file

mktar() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }    # Creates a *.tar.gz archive of a file or folder
mkzip() { zip -r "${1%%/}.zip" "$1" ; }               # Create a *.zip archive of a file or folder

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo er$'

# extract ze everything
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }


parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \[\033[0;36m\]\h \w\[\033[0;32m\] $(parse_git_branch)\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] '
```

### VS Code extensions
* Auto Rename Tag
* Bracket Pair Colorizer
* Codesandbox Theme
* Vetur
* VSCode Great Icons
* Settings Sync
* Git Blame
* Sublime Text Keymap
* Code Time
* Live Share
* IntelliJ IDEA Keybindings
* DotENV
* Python
* Vue Peek
* SCSS Formatter

### VS Code custom snippets
```javascript
{
   "insert js/json code": {
      "scope": "",
      "prefix": "dump",
      "body": [
         "<pre>",
         "<code class=\"javascript\">",
         "$1",
         "</code>",
         "</pre>"
      ],
      "description": "insert pre tag with code"
   },
   "Print to console": {
      "scope": "javascript,typescript",
      "prefix": "asdf",
      "body": [
         "console.log('$1');",
      ],
      "description": "Log output to console"
   }
}

```
