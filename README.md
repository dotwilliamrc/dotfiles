# Preinstalacion
## Teclado
Para convertir a dvorak programmer en la sesion actual usar:
```zsh
setxkbmap -layout us,es -model pc105 -variant dvp,dvorak -option "grp:alt_space_toggle, caps:escape_shifted_capslock"
```

Para convertir a dvorak programmer de manera persistente:
```zsh
localectl set-x11-keymap us,es pc105 dvp,dvorak "grp:alt_space_toggle, caps:escape_shifted_capslock"
```

## Dependencias
### Generales
```zsh
sudo pacman -S xorg xorg-xinit xorg-server pavucontrol imagemagick feh lxappearance pulseaudio
```

### Display Manager
```zsh
sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings lightdm-slick-greeter
```

### Window Manager
```zsh
sudo pacman -S bspwm sxhkd rofi polybar
```

### Extra
```zsh
sudo pacman -S firefox firefox-developer-edition pcmanfm screenkey kitty
```

# Instalacion
## Pulseaudio
Si no quiere funcionar correr
```zsh
pulseaudio --check
pulseauido -D
```

## ZSH
### Dependencias
```zsh
sudo pacman -S zsh zsh-completions zsh-autosuggestions
```

### Definir por defecto
```zsh
chsh -s /bin/zsh
```

### Oh-My-Zsh
Clonamos el repositorio
```zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Agregamos el highlighting y el autosuggestion
```zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### Power level  10k
Instalamos lo necesario
```zsh
sudo pacman -S powerline-common awesome-terminal-fonts 
paru -S zsh-theme-powerlevel10k-git ttf-meslo-nerd-font-powerlevel10k
```

Configuramos p10k corriendo:
```zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
p10k configure
```

## Pywal
Instalacion de pywal:
```zsh
sudo pacman -S python-pywal python-pip python2 go
```

Instalacion de backends
```zsh
pip3 install colorthief colorz schemer haishoku
go install github.com/thefryscorer/schemer2@latest
```

Instalacion de slick-pywal
```zsh
git clone https://github.com/Paul-Houser/slickgreeter-pywal
cd slickgreeter-pywal
sudo chmod +x install.sh
sudo sh install.sh
```

## Kitty
Instalacion de fuentes
```zsh
paru -S nerd-fonts-fira-code
```

## Tema
Dependencias
```zsh
sudo pacman -S inkscape optipng xfconf
```

Descargamos el tema
```zsh
git clone https://github.com/reorr/warnai ~/.themes/download/warnai
```

## Iconos
Dependencias
```zsh
sudo pacman -S zenity
```

Descargamos los iconos
```zsh
git clone https://github.com/jcubic/Clarity ~/.icons/Clarity
```

## Polybar
Fuentes
```zsh
sudo pacman -S ttf-iosevka-nerd ttf-font-awesome otf-ipaexfont
paru -S ttf-material-icons-git ttf-font-logos
```

## Picom
Para las animaciones de las ventanas usare el siguiente fork de picom
```zsh
paru -S picom-pijulius-git
```

## Archivos de configuracion
Dentro de la carpeta '.dotfiles' correr `./install`

## Slick Greeter
Agregar slick greeter en el archivo de configuracion de lightdm:
```zsh
/etc/lightdm/lightdm.conf
---
[Seat:*]
...
greeter-session=lightdm-slick-greeter
...
```

Activar el display manager:
```zsh
sudo systemctl enable lightdm.service
sudo systemctl start lightdm.service
```
