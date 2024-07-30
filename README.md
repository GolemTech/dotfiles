# Dotfiles

### Install GNU Stow for manage dotfiles

```Sh
sudo pacman -Sy stow
```


### Usage

```Sh
git clone https://github.com/GolemTech/dotfiles.git ~/dotfiles
cd dotfiles
stow .
```
### Tipografía

Para usar la tipografia de JetNrains Mono y sus ligaduras en VSCode, puede seguir el siguiente repo

[Font JetBrains](https://github.com/JetBrains/JetBrainsMono)

para instalar la tipografía, puede ejecutar el siguiente comando en la terminal

```Sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"
```

para install diff-so-fancy para usar con lazygiy

```Sh
sudo pacman -Syu diff-so-fancy
```

tener en cuenta para los archivos zsh

```
https://www.jameslingford.com/blog/stow-dotfiles/
```