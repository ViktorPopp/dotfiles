# My dotfiles!

## Setup

Add the following to your interactive startup script (`.bashrc`, `.zshtc` etc.):

```sh 
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

Then clone the repository:

```sh
$ git clone --bare https://github.com/ViktorPopp/dotfiles.git $HOME/.dotfiles
$ dot config --local status.showUntrackedFiles no
$ dot checkout
```

If you already have some of the dotfiles present, you will see this error:

```sh
error: The following untracked working tree files would be overwritten by checkout:
 .bashrc
Please move or remove them before you switch branches.
Aborting
```

Remove or backup any collisions and repeat the checkout.

Congratulations, you are done!

