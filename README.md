<h1 align="center">
  <br>
  <a href="https://obsidian.md/"><img src="/images/neovim.png" alt="Neovim" width="200"></a>
  <br>
	Neovim config
  <br>
</h1>

<h4 align="center">Neovim config by anvnh</h4>

<p align="center">
  • <a href="#how-to-use">How To Use</a> •
</p>

## How To Use
# Linux: 
```sh
git clone https://github.com/anvnh/neovim-config.git -o origin ~/.config/nvim
```
Make sure to remove nvim folder in ~/.config. If you want to install without concerning, run this command
```sh
sudo rm -rf ~/.config/nvim && git clone https://github.com/anvnh/neovim-config.git -o origin ~/.config/nvim
```
Requires dependencies: 
```sh
sudo pacman -S $(pacman -Sgq nerd-fonts) && sudo pacman -S $(pacman -Sgq nodejs) && sudo pacman -S npm
```

## License

MIT

---
