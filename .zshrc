
# pyenvのためにパスを追加
export PATH=~/.pyenv/shims:$PATH
# phpbrewのためにスクリプトを実行
# source ~/.phpbrew/bashrc

# nodebrewのためにパスを追加
export PATH=~/.nodebrew/current/bin:$PATH

# git add commit push を同時にやる
# function hoge() とやることで、エイリアスの代わりになり、
# どの階層でhoge と入力してもこの関数が呼ばれる。不思議だ。
function lazygit(){
	git add .
	git commit -a -m "$1"
	git push
}

# 補完の機能を追加
# ファイル名を途中まで入力してtabを押すと補完してくれるのはデフォルトでできる。
# compinitは、コマンドの引数まで補完してくれる！
# [git a]まで入力してtabを押すと[git add]に補完してくれる。

autoload -Uz compinit
compinit

# プロンプトをカスタマイズ
# というシンプルなもの
PROMPT='%n$ '

# エイリアスを追加
# alias ghcreate='python /Users/yoneda/softwares/ghcreate/new.py'

# java8を利用したい場合
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# cpコマンドで隠しファイルも含めてコピーできるように
setopt GLOB_DOTS

# タブのタイトルにカレントディレクトリのフォルダ名を表示しておく
precmd(){
	echo -ne "\e]1;${PWD:t}\a"
}


