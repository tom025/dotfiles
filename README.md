# `dotfiles` #

## Passwordless sudo ##

Passwordless sudo is needed for HomeBrew install

Add a sudo configuration with `visudo`

```sh
sudo visudo /private/etc/sudoers.d/tom025
```

Copy this text into the file

```
tom025            ALL = (ALL) NOPASSWD: ALL
```

Save and quit

