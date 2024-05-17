运行脚本：

```
sudo wget https://github.com/sunway910/AwesomeAlias/blob/main/alias.sh && sudo bash alias.sh
```

## Awesome aliases

### Daily Command

```
alias "cd-"="sudo cd -"
alias 。。="sudo cd .."
alias 。。。="sudo cd ../.."
alias 。。。。="sudo cd ../../.."
alias 。。。。。="sudo cd ../../../.."
alias 。。。。。。="sudo cd ../../../../.."
alias ..="sudo cd .."
alias ...="sudo cd ../.."
alias ....="sudo cd ../../.."
alias .....="sudo cd ../../../.."
alias ......="sudo cd ../../../../.."

alias ，="sudo ,"
alias ；="sudo ;"
alias 。="sudo ."
alias cp="sudo cp -r"
alias CP="sudo cp -r"
alias MV="sudo mv"
alias CD="sudo cd"
alias ll="sudo ls -alF"
alias LL="sudo ls -alF"
alias RM="sudo rm -r"
alias rm="sudo rm -r"
alias du="sudo du -sh"
alias df="sudo df -h"
port()  { sudo lsof -i:$1 ;}

alias c="sudo clear"
alias cl="sudo clear"
alias clr="sudo clear"
alias ckear="sudo clear"

alias h="sudo history"
alias h1="sudo history 10"
alias h2="sudo history 20"
alias h3="sudo history 30"
alias hgrep='sudo history | grep'

alias sstatus="sudo systemctl status"
alias srestart="sudo systemctl restart"
alias sdisable="sudo systemctl disable"
alias senable="sudo systemctl enable"
alias sstop="sudo systemctl stop"

alias most='sudo du -hx | sort -rh | head -10'
alias totaluse='sudo df -hl --total | grep total'

alias wget="sudo wget -c"
alias curl="sudo curl -v"

alias paux='sudo ps aux | grep'
alias pefww='sudo ps efww | grep'

alias freem='sudo free -m'
alias free-m='sudo free -m'
alias freeg='sudo free -g'
alias free-g='sudo free -g'

alias chown='sudo chown --preserve-root'
alias chmod='sudo chmod --preserve-root'
alias chgrp='sudo chgrp --preserve-root'

alias apti="sudo sudo apt install"
alias aptgi="sudo sudo apt-get install"
alias aptu="sudo sudo apt update"
alias aptgu="sudo sudo apt-get update"

alias yumu="sudo yum -y update"
alias yumi="sudo yum -y install"

alias zypperu="sudo zypper -y update"
alias zypperi="sudo zypper -y install"

alias server2='sudo nohup python -m SimpleHTTPServer &'
alias server3='sudo nohup python3 -m http.server &'

alias netstat="sudo netstat -anop"
alias netstatl="sudo netstat -anop | grep -i LISTENING"

alias ss="sudo ss -an"
alias ssl="sudo ss -anl"
alias sssip="sudo ss -ant src"
alias ssdip="sudo ss -ant dst"
alias sss="sudo ss -s"
sssport()  { ss -ant src :$1 ;}
ssdport()  { ss -ant dst :$1 ;}
alias ssssh="sudo ss -o state established '( dport = :ssh or sport = :ssh )'"
alias sshttp="sudo ss -o state established '( dport = :http or sport = :http )'"

alias sstatus="sudo systemctl status"
alias sstart="sudo systemctl restart"
alias sstop="sudo systemctl stop"

alias ngr="sudo nginx -s reload"
```


### Docker
```
# example: dlog centos
alias dps='sudo docker ps'
alias dpsa='sudo docker ps -a'
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
```


### Kubernetes
```
alias k="sudo kubectl"
alias kapply="sudo kubectl apply -f"
alias kpatch="sudo kubectl patch -f"
alias kedit="sudo kubectl edit"
alias kscale="sudo kubectl scale"
alias kget="sudo kubectl get"
alias kgetp="sudo kubectl get po -o wide"
alias kgets="sudo kubectl get svc -o wide"
alias kgeti="sudo kubectl get ingress -o wide"
alias kgetpv="sudo kubectl get pv -o wide"
alias kgetpvc="sudo kubectl get pvc -o wide"
alias kgeta="sudo kubectl get all -o wide"
alias kgetaa="sudo kubectl get all --all-namespaces"
alias kgetn="sudo kubectl get namespaces"
alias kinfo="sudo kubectl cluster-info"
alias kdesc="sudo kubectl describe"
alias ktop="sudo kubectl top"
alias klog="sudo kubectl logs -f"
alias knode="sudo kubectl get nodes -o wide"
alias kdelete="sudo kubectl delete"
kexec() { kubectl exec $1 -n $2 -it -- bash ;}
kgetpoy() { kubectl get po $1 -n $2 -o yaml ;}
kdescp() { kubectl describe po $1 -n $2 ;}
kdescs() { kubectl describe svc $1 -n $2 ;}
kdesci() { kubectl describe ingress $1 -n $2 ;}
kdescd() { kubectl describe deployment $1 -n $2 ;}

alias hl="sudo helm list -A"
alias hi="sudo helm install"
alias hu="sudo helm uninstall"
alias ht="sudo helm template"
```

### Git

```
alias gs="sudo git status"
alias gst="sudo git status -sb"
alias gl="sudo git log"
alias ga="sudo git add"
alias gaa="sudo git add -A"
alias gal="sudo git add ."
alias gall="sudo git add ."
alias gca="sudo git commit -a"
alias gc="sudo git commit -m"
alias gcot="sudo git checkout"
alias gchekout="sudo git checkout"
alias gchckout="sudo git checkout"
alias gckout="sudo git checkout"
alias go="sudo git push -u origin"
alias gsh='sudo git stash'
alias gw='sudo git whatchanged'
alias nah="sudo git clean -df && git checkout -- ."
```
