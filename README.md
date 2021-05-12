# ahmet’s macOS Setup

## Download Xcode

For google, go/xcode. This will take a lot of time, so start with this.

## OS Settings

./.macos

## Shell

Install oh-my-zsh: https://github.com/robbyrussell/oh-my-zsh

## Package manager

- Install Homebrew &mdash;to `$HOME/.homebrew` instead of /usr/local:

      git clone https://github.com/Homebrew/brew.git $HOME/.homebrew

- Run `which brew` to confirm the one in home directory is picked up.
- Run `brew analytics off`

## Installing software via Homebrew

    brew bundle --global

Some things that require manual installation after Homebrew:

```sh
# if pip requires sudo, something is wrong, because the
# Homebrew bundle should install a $USER-writable over system-python.

pip install virtualenv
pip install virtualenvwrapper
pip3 install virtualenv
pip3 install virtualenvwrapper
```

## Post-Installation Configuration

- **Clipy**
  - Launch at Login
  - Hide from Menu Bar
  - Set history size to 200
  - Set paste key to <kbd>Cmd</kbd>+<kbd>Shift</kbd>+<kbd>V</kbd>
- **fzf** completion scripts:

      "$HOMEBREW"/opt/fzf/install

- **minikube** xhyve driver:

      # minikube uses xhyve, which requires privileged access to the hypervisor
      sudo chown root:wheel /usr/local/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
      sudo chmod u+s /usr/local/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve

## Settings Sync

- Clone this repo and run `install_symlinks.sh`
    - Open a new terminal to take effect.


- VSCode:
  - setup settings sync

## Git Setup

Run:

    ./git_setup.sh

## Clone your repos:

  ./clone.sh

## Open Backup & Sync from Google app and sign in so mackup can access the backup files

## Restore Mackup:

  mackup restore
