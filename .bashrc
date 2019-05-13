function cht(){
    q="${@:2}"
    curl cht.sh/$1/${q// /+}
}
