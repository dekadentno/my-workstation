# my-workstation
:computer: Configs, plugins, programs I use at my workstation

### Chrome plugins
* HTTPS everywhere
* uBlock Origin
* FlowCrypt
* LastPass
* Vue Devools

### Dev
* Sublime Text 2 + Material theme https://github.com/equinusocio/material-theme
* NVM https://github.com/creationix/nvm

### Other productivity related software
* htop
* Telegram 
* Terminator 
* Albert https://github.com/albertlauncher/albert
* Anoise http://anoise.tuxfamily.org/

### Other software
* Brave browser 
* VLC
* Ledger Live

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
Don't forger source ~/.bashrc
```bash
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \[\033[0;36m\]\h \w\[\033[0;32m\] $(parse_git_branch)\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] '
```

### Sublime plugins 
* Bracket Highlighter
* Color Highlight
* File Icons
* Material Color Scheme
* Material Theme
* Sass
* Sidebar Enchatements
* Vue Syntax Highlight

# Add in the future
* Sublime snippets
