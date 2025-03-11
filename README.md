# adelie-toolbx

An [Adélie Linux](https://www.adelielinux.org/) container for [toolbx](https://containertoolbx.org/).

Think of it like a much more integrated chroot that automatically takes your home dir, user config,
X forwarding, etc.

# Using
```
toolbox create adelie --image ghcr.io/ashquarky/adelie-toolbx:main
toolbox enter adelie
```
`sudo` is NOPASSWD by default.
