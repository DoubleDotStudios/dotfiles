# Dotfiles

## To use

1. Install [GNU stow](https://www.gnu.org/software/stow/).
2. Install dependencies.

   Arch:

   ```console
   pacman -S noto-fonts ttf-cascadia-code-nerd
   ```

   Ubuntu:

   ```console
   sudo apt-get fonts-cascadia-code fonts-noto
   ```

   Fedora:

   ```console
   dnf cascadia-code-fonts install google-noto-fonts-all
   ```

3. Use git to clone the repo into you home directory.
   ```console
   git clone https://github.com/DoubleDotStudios/dotfiles.git ~
   ```
4. Use GNU stow to symlink the directories.

   ### Tmux, Nvim, Kitty, Fastfetch, and Dunst (~/.config)
   ```console
   stow .
   ```

   ### Zshrc (~/.zshrc and ~/.zshenv)
   ```console
   stow -v -t ~ zsh/
   ```
