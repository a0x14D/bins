#!/bin/env bash 

# colors for script 
RED='\e[1;31m'
GREEN='\e[1;32m'
YELLOW='\e[1;33m'
BLUE='\e[1;34m'
CRYAN='\e[1;36m'
NC='\e[0m'
ITALIC='\e[3m'


function banner {
  echo -e "
  $BLUE
   ▀█████████▄   ▄█  ███▄▄▄▄   ███▄▄▄▄      ▄████████    ▄████████    ▄████████ 
      ███    ███ ███  ███▀▀▀██▄ ███▀▀▀██▄   ███    ███   ███    ███   ███    ███ 
      ███    ███ ███▌ ███   ███ ███   ███   ███    █▀    ███    ███   ███    █▀  
     ▄███▄▄▄██▀  ███▌ ███   ███ ███   ███  ▄███▄▄▄      ▄███▄▄▄▄██▀   ███        
    ▀▀███▀▀▀██▄  ███▌ ███   ███ ███   ███ ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   ▀███████████ 
      ███    ██▄ ███  ███   ███ ███   ███   ███    █▄  ▀███████████          ███ 
      ███    ███ ███  ███   ███ ███   ███   ███    ███   ███    ███    ▄█    ███ 
    ▄█████████▀  █▀    ▀█   █▀   ▀█   █▀    ██████████   ███    ███  ▄████████▀  
                                                         ███    ███              

                                                         $NC
                                                       $YELLOW creator:$NC$RED$ITALIC@a0x14d$NC
  "
}

function install {
  if [[ "$1" == "-i" ]]; then
    echo -e "$BLUE"
    read -p "Enter the number of the script you want to install: " num
    echo -e "$NC"
    mkdir -p ~/.local/bin/
    if [[ "$num" == "1" ]]; then
      cp ./bin/arch_lamp ~/.local/bin/
    elif [[ "$num" == "2" ]]; then
      cp ./bin/archclean ~/.local/bin/
    elif [[ "$num" == "3" ]]; then
      cp ./bin/brightnessControl ~/.local/bin/
    elif [[ "$num" == "4" ]]; then
      command -v w3m || echo "install w3m using your favorite package manager [apt, pacman, dnf, zypper]"
      cp ./bin/cnf ~/.local/bin/
    elif [[ "$num" == "5" ]]; then
      cp ./bin/i3exit ~/.local/bin/
    elif [[ "$num" == "6" ]]; then
      cp ./bin/nightlight ~/.local/bin/
    elif [[ "$num" == "7" ]]; then
      cp ./bin/nv ~/.local/bin/
    elif [[ "$num" == "8" ]]; then
      cp ./bin/screen_recoder ~/.local/bin/
    elif [[ "$num" == "9" ]]; then
      cp ./bin/spotifydl ~/.local/bin/
    elif [[ "$num" == "10" ]]; then
      cp ./bin/tts ~/.local/bin/
    elif [[ "$num" == "11" ]]; then
      cp ./bin/udemy ~/.local/bin/
    elif [[ "$num" == "12" ]]; then
      cp ./bin/virt ~/.local/bin/
    elif [[ "$num" == "13" ]]; then
      cp ./bin/volumeControl ~/.local/bin/
    elif [[ "$num" == "14" ]]; then
      command -v zsh || echo "if you install cnf script  try cnf zsh  or install using package manager"
      cp ./bin/zap_zsh ~/.local/bin/
      echo -e "$YELLOW
      after installing zsh try this commands on your shell 
      chsh -s $(which zsh)
      mv ~/.zshrc ~/.zshrc.bak
      zap_zsh
      $NC
      "
    elif [[ "$num" == "15" ]]; then
      cp ./bin/tgpt ~/.local/bin/
    else
      echo -e "$RED[-]$NC Invalid option"
    fi
    echo "export PATH=$PATH:~/.local/bin/" >> ~/.bashrc
    echo "export PATH=$PATH:~/.local/bin/" >> ~/.zshrc
    echo -e "$GREEN[+]$NC Dependencies installed"
  fi
}

function list {
  echo -e "
    $YELLOW[1]$NC${BLUE}arch_lamp                           ${NC}- Install LAMP stack on Arch Linux apache,mariadb,php
    $YELLOW[2]$NC${BLUE}archclean                           ${NC}- cache Clean Arch Linux
    $YELLOW[3]$NC${BLUE}brightnessControl                   ${NC}- Control brightness of screen using brightnessctl for X11 server  
    $YELLOW[4]$NC${BLUE}cnf                                 ${NC}- command not found is a script helps command not found errors in shell $CRYAN eg: cnf ifconfig $NC   
    $YELLOW[5]$NC${BLUE}i3exit                              ${NC}- Exit in i3wm 
    $YELLOW[6]$NC${BLUE}nightlight                          ${NC}- nightlight is a script to trun on readlight in linux automation 7pm-6am night , 6am-7pm day 
    $YELLOW[7]$NC${BLUE}nv                                  ${NC}- nvidia run file
    $YELLOW[8]$NC${BLUE}screen_recoder                      ${NC}- scrren recoder using ffmpeg in 1920x1080 display only if you want to change in script
    $YELLOW[9]$NC${BLUE}spotifydl                           ${NC}- Download spotify songs using in spotdl
   $YELLOW[10]$NC${BLUE}tts                                 ${NC}- Text to speech using elevenlabs
   $YELLOW[11]$NC${BLUE}udemy                               ${NC}- Download udemy courses using acesstoken
   $YELLOW[12]$NC${BLUE}virt                                ${NC}- Virtualization using virt-manager
   $YELLOW[13]$NC${BLUE}volumeControl                       ${NC}- Control volume of system using amixer in X11 server
   $YELLOW[14]$NC${BLUE}zap_zsh                             ${NC}- Zsh auto suggestion and syntax highlighting and vi-mode , autocomplete
   $YELLOW[15]$NC${BLUE}tgpt                                ${NC}- terminal gpt alternative of chatgpt its free no need of api key
  "
  echo -e "$RED [NOTE]:if you face any issue in installation of script please raise an issue in github$NC"
  echo -e "$RED [NOTE]:if you face any runtime erros solve yourself or raise an issue $NC"
  echo ""
}

banner
list
while true 
do
  install $@
  sleep 3
  clear
  banner
  list
done
