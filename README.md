# Dotfiles

## To use

1. Install [GNU stow](https://www.gnu.org/software/stow/).
2. Install dependencies.

   Arch:

   ```console
   pacman -S noto-fonts ttf-cascadia-code-nerd
   ```

   Ubuntu:

   ```
   sudo apt-get fonts-cascadia-code fonts-noto
   ```

   Fedora:

   ```
   dnf cascadia-code-fonts install google-noto-fonts-all
   ```

3. Use git to clone the repo into you home directory.
   ```console
   git clone https://github.com/DoubleDotStudios/dotfiles.git ~
   ```
4. Use GNU stow to symlink the directories into '~/.config'.

   ### Dunst:

   ```console
   stow dunst
   ```

   ### Fastfetch

   ```console
   stow fastfetch
   ```

   ### Neovim

   ```console
   stow nvim
   ```

   ### Kitty

   ```console
   stow kitty
   ```

   ### Tmux

   ```console
   stow tmux
   ```

   ### Zshrc

   ```console
   stow zsh
   ```
