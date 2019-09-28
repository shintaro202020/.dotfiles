## Setup
### Install Chrome
```
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update
sudo apt-get install google-chrome-stable
```

### Install vim, git, zsh
```
sudo apt-get update && sudo apt-get upgrade
sudo apt install vim zsh git
```

### Github Setup
```
git config --global user.email "yoshidashintaro0920@gmail.com"
git config --global user.name  "Shintaro Yoshida"
ssh-keygen -t rsa -b 4096 -C "yoshidashintaro0920@gmail.com"
<<<Copy Public Key to github Setting>>>
echo -e 'Host github github.com \n  HostName github.com \n  User git\n  IdentityFile ~/.ssh/--' >> ~/.ssh/config
```
