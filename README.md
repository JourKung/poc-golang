# poc-golang

Setup environment

Add `/usr/local/go/bin` to the PATH environment variable. (PS. add to $HOME/.profile)

Then,
```.zsh
# Define GOROOT
export GOROOT=~/goroot
export PATH=$PATH:$GOROOT/bin
```

To make sure that PATH contains /usr/local/go/bin (by assigned to $HOME/goroot/)
`$ echo $PATH | grep "/usr/local/go/bin"`

If you want to upgrade golang version follow below:
1. Installing golang `.pkg`
2. `$ sudo rm -rf $HOME/goroot`
3. `$ sudo mv /usr/local/go /usr/local/goroot`
4. `$ sudo mv /usr/local/goroot $HOME/`
