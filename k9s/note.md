# K9s

## Install K9s 
https://k9scli.io/topics/instlal/
'''
git clone git@github.com:derailed/k9s.git ~/git/k9s

sudo apt install golang-go make

cd ~/git/k9s

make build && ./execs/k9s
'''

## Alias K9s
Append to ~/.bashrc
```
alias k9s='~/git/k9s/execs/k9s'
```
