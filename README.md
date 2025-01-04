<h1 align="center">
  <br>
  <a href=""><img src="/images/neovim.png" alt="Neovim" width="150"></a>
  <br>
	Neovim config
  <br>
</h1>

<h4 align="center">Neovim config by anvnh</h4>

<p align="center">
  • <a href="#installation"> Installation </a> •
</p>

## Installation
### Install Neovim:
Make sure neovim version is >= 0.8.0, otherwise this configuration may not work.

### Dependencies:
External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- ripgrep
- Clipboard tool (xclip/xsel/win32yank or other depending on the platform)
- Nerd fonts
- - Language Setup:
  - If you want to write Typescript, you need `npm`
  - If you want to write Golang, you will need `go`
  - etc...


> **NOTE**
> [Backup](#FAQ) your previous configuration (if any exists)

Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux, MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)| `%localappdata%\nvim\` |
| Windows (powershell)| `$env:LOCALAPPDATA\nvim\` |

### Install config
#### Clone this repository
> **NOTE**
> If following the recommended step above (i.e., forking the repo), replace
> `nvim-lua` with `<your_github_username>` in the commands below

<details><summary> Linux and Mac </summary>
```sh
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```
</details>
<details><summary> Windows </summary>
If you're using `cmd.exe`:
```
git clone https://github.com/nvim-lua/kickstart.nvim.git "%localappdata%\nvim"
```
If you're using `powershell.exe`
```
git clone https://github.com/nvim-lua/kickstart.nvim.git "${env:LOCALAPPDATA}\nvim"
```
</details>

Requires dependencies: 
```sh
sudo pacman -S $(pacman -Sgq nerd-fonts) && sudo pacman -S $(pacman -Sgq nodejs) && sudo pacman -S npm && sudo pacman -S unzip zip sxiv imagemagick
```

## License

MIT

---
