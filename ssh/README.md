# SSH

## Create SSH Key
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

### Generate new SSH Key
```
ssh-keygen -t ed25519 -C "<your_email@example.com>"
```

### Add SSH key to the ssh-agent
```
eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519
```

## Add SSH Key to GitHub
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account

### Copy Public SSH Key
```
cat ~/.ssh/id_ed25519.pub
```

### Paste Public SSH Key 
https://github.com/settings/keys
