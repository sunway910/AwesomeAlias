cat >> /root/~.bashrc << EOF

alias "cd-"="cd -"
alias 。。="cd .."
alias 。。。="cd ../.."
alias 。。。。="cd ../../.."
alias 。。。。。="cd ../../../.."
alias 。。。。。。="cd ../../../../.."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias ，=","
alias ；=";"
alias 。="."
alias cp="cp -r"
alias CP="cp -r"
alias MV="mv"
alias CD="cd"
alias ll="ls -alF"
alias LL="ls -alF"
alias RM="rm -r"
alias rm="rm -r"
alias du="du -sh"
alias df="df -h"
port()  { sudo lsof -i:$1 ;}

alias c="clear"
alias cl="clear"
alias clr="clear"
alias ckear="clear"

alias h="history"
alias h1="history 10"
alias h2="history 20"
alias h3="history 30"
alias hgrep='history | grep'

alias sstatus="systemctl status"
alias srestart="systemctl restart"
alias sdisable="systemctl disable"
alias senable="systemctl enable"
alias sstop="systemctl stop"

alias most='du -hx | sort -rh | head -10'
alias totaluse='df -hl --total | grep total'

alias wget="wget -c"
alias curl="curl -v"

alias paux='ps aux | grep'
alias pefww='ps efww | grep'

alias freem='free -m'
alias free-m='free -m'
alias freeg='free -g'
alias free-g='free -g'

alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

alias apti="sudo apt install"
alias aptgi="sudo apt-get install"
alias aptu="sudo apt update"
alias aptgu="sudo apt-get update"

alias yumu="yum -y update"
alias yumi="yum -y install"

alias zypperu="zypper -y update"
alias zypperi="zypper -y install"

alias server2='nohup python -m SimpleHTTPServer &'
alias server3='nohup python3 -m http.server &'

alias netstat="netstat -alnop"
alias netstatl="netstat -alnop | grep -i LISTENING"

alias ss="ss -an"
alias ssl="ss -anl"
alias sssip="ss -ant src"
alias ssdip="ss -ant dst"
alias sss="ss -s"
sssport()  { ss -ant src :$1 ;}
ssdport()  { ss -ant dst :$1 ;}
alias ssssh="ss -o state established '( dport = :ssh or sport = :ssh )'"
alias sshttp="ss -o state established '( dport = :http or sport = :http )'"
alias sstatus="systemctl status"
alias sstart="systemctl restart"
alias sstop="systemctl stop"

alias ngr="nginx -s reload"

# example: dlog centos
drun()  { sudo docker run -it --privileged $@ ;}
dexec() { sudo docker exec -it $@ /bin/bash ;}
dlog()  { sudo docker logs -f $@ ;}
dport() { sudo docker port $@ ;}
dvol()  { sudo docker inspect --format '{{ .Volumes }}' $@ ;}
dip()   { sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' $@ ;}
drmi()  { sudo docker rmi -f $@ ;}
dstop() { sudo docker stop $@ ; }
drm()   { sudo docker rm $@ ; }
dclean() { sudo docker stop $@ && sudo docker rm $@ ; }
drestart() { sudo docker restart $@  ; }


# example: kexec nginx default
alias k="kubectl"
alias kapply="kubectl apply -f"
alias kpatch="kubectl patch -f"
alias kedit="kubectl edit"
alias kscale="kubectl scale"
alias kget="kubectl get"
alias kgetp="kubectl get po -o wide"
alias kgets="kubectl get svc -o wide"
alias kgeti="kubectl get ingress -o wide"
alias kgetpv="kubectl get pv -o wide"
alias kgetpvc="kubectl get pvc -o wide"
alias kgeta="kubectl get all -o wide"
alias kgetaa="kubectl get all --all-namespaces"
alias kgetn="kubectl get namespaces"
alias kinfo="kubectl cluster-info"
alias kdesc="kubectl describe"
alias ktop="kubectl top"
alias klog="kubectl logs -f"
alias knode="kubectl get nodes -o wide"
alias kdelete="sudo kubectl delete"
kexec() { kubectl exec $1 -n $2 -it -- bash ;}
kgetpoy() { kubectl get po $1 -n $2 -o yaml ;}
kdescp() { kubectl describe po $1 -n $2 ;}
kdescs() { kubectl describe svc $1 -n $2 ;}
kdesci() { kubectl describe ingress $1 -n $2 ;}
kdescd() { kubectl describe deployment $1 -n $2 ;}

alias hl="helm list -A"
alias hi="helm install"
alias hu="helm uninstall"
alias ht="helm template"

alias gs="git status"
alias gst="git status -sb"
alias gl="git log"
alias ga="git add"
alias gaa="git add -A"
alias gal="git add ."
alias gall="git add ."
alias gca="git commit -a"
alias gc="git commit -m"
alias gcot="git checkout"
alias gchekout="git checkout"
alias gchckout="git checkout"
alias gckout="git checkout"
alias go="git push -u origin"
alias gsh='git stash'
alias gw='git whatchanged'
alias nah="git clean -df && git checkout -- ."


EOF
