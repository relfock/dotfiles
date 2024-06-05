#!/bin/bash

alias la=tree
export LANG=en_US.UTF-8
export EDITOR=nvim
export PATH=$PATH:~/.local/bin:~/.fzf/bin/
export USE_DOCKER_IN_GIT_HOOKS=1
export HIZZ_PRO_PATH=/var/fpga_netlists

# Git
alias glog="git log --graph --topo-order --pretty='%w(100,0,6)%C(yellow)%h%C(bold)%C(black)%d %C(cyan)%ar %C(green)%an%n%C(bold)%C(white)%s %N' --abbrev-commit"

# Dirs
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias drun='../docker/hfv-workstation/run-container.sh'
alias dscons='../docker/hfv-workstation/run-container.sh scons'
alias dctf_tm='../docker/hfv-workstation/run-container.sh ctf_tm'

alias vt='ssh -CD 1080 andrew@46.162.209.62'
alias jk='ssh -CJ andrew@46.162.209.62 andrew@10.1.0.11'

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# navigation
fcd() 
{ 
	cd "$(find . -type d -not -path '*/.*' | fzf)" && l; 
}

fv() 
{ 
	nvim "$(find . -type f -not -path '*/.*' | fzf)" 
}

function start_jlink_debugger()
{
    if [ "${1}" == "bbpr" -o "${1}" == "flpr" -o "${1}" == "ppr" -o "${1}" == "sysctrl" ] ; then
        device=risc-v
    else
        device=cortex-m33
    fi

    if [ "$2" == "" ] ; then
        port=2331
    else
        port=$2
    fi

    cp ~/${1}_gdb_initscript . && drun JLinkGDBServer -select USB=821012911 -if SWD -speed 1000 -port ${port} -Device ${device} -scriptfile ./${1}_gdb_initscript
}

function debugarm()
{
    elf=$1

    if [ "$2" == "" ] ; then
        port=2331
    else
        port=$2
    fi

    drun arm-none-eabi-gdb --eval-command="target remote localhost:${port}" ${elf}
}

function debugvpr()
{
    elf=$1

    if [ "$2" == "" ] ; then
        port=2331
    else
        port=$2
    fi

    drun riscv32-unknown-elf-gdb --eval-command="target remote localhost:${port}" ${elf}
}
