### ALIASES ###
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

PS1='\[\e[0m\]\w \[\e[0m\]-\[\e[0m\]>\[\e[0m\] '

##Time elapsed prompt
#prompt_command() {
#  local -i start elapsed
#  read _ start _ < <(HISTTIMEFORMAT='%s ' history | tail -n 1)
#  (( elapsed = $(date +%s) - start ))
#  local label=${elapsed}s
#  tput cuf 999
#  tput cub ${#label}
#  printf '%s\r' "$label"
#}

#Focus stealing in gnome
#PROMPT_COMMAND="tput bel"
PROMPT_COMMAND="history -a; history -c; history -r"

#Environment variables
if [ -z "$XDG_CONFIG_HOME" ] ; then
    export XDG_CONFIG_HOME="$HOME/.config"
fi
if [ -z "$XDG_DATA_HOME" ] ; then
    export XDG_DATA_HOME="$HOME/.local/share"
fi
if [ -z "$XDG_CACHE_HOME" ] ; then
    export XDG_CACHE_HOME="$HOME/.cache"
fi

# Expand the history size
export HISTSIZE=50000

# Don't put duplicate lines in the history and do not add lines that start with a space
export HISTCONTROL=erasedups:ignoredups:ignorespace

### SHOPT
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob # would match hidden files
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases
shopt -s checkwinsize # checks term size when bash regains control
shopt -s direxpand # expand directories
shopt -u extglob # extended globbing; allows use of ?(), *(), +(), +(), @(), and !() with separation "|" for OR options
shopt -s globstar # **/ matches all subdirectories, searches recursively

#dir colors
export LS_COLORS='rs=0:so=0;38;5;16;48;5;203:or=0;38;5;16;48;5;203:su=0:mi=0;38;5;16;48;5;203:fi=0:di=0;38;5;81:st=0:tw=0:mh=0:cd=0;38;5;203;48;5;236:*~=0;38;5;243:do=0;38;5;16;48;5;203:ow=0:ex=1;38;5;203:sg=0:ca=0:pi=0;38;5;16;48;5;81:bd=0;38;5;81;48;5;236:ln=0;38;5;203:no=0:*.t=0;38;5;48:*.z=4;38;5;203:*.o=0;38;5;243:*.d=0;38;5;48:*.p=0;38;5;48:*.m=0;38;5;48:*.a=1;38;5;203:*.h=0;38;5;48:*.c=0;38;5;48:*.r=0;38;5;48:*.so=1;38;5;203:*.bz=4;38;5;203:*.pm=0;38;5;48:*.la=0;38;5;243:*.wv=0;38;5;208:*.hs=0;38;5;48:*.7z=4;38;5;203:*.vb=0;38;5;48:*.rs=0;38;5;48:*.cc=0;38;5;48:*.gz=4;38;5;203:*.di=0;38;5;48:*.xz=4;38;5;203:*.js=0;38;5;48:*.cs=0;38;5;48:*.mn=0;38;5;48:*.fs=0;38;5;48:*.ml=0;38;5;48:*.hi=0;38;5;243:*.go=0;38;5;48:*.py=0;38;5;48:*.kt=0;38;5;48:*.ko=1;38;5;203:*.cp=0;38;5;48:*.el=0;38;5;48:*.ts=0;38;5;48:*.jl=0;38;5;48:*.pp=0;38;5;48:*.rm=0;38;5;208:*.cr=0;38;5;48:*.ex=0;38;5;48:*.rb=0;38;5;48:*.ps=0;38;5;186:*.gv=0;38;5;48:*.hh=0;38;5;48:*css=0;38;5;48:*.bc=0;38;5;243:*.nb=0;38;5;48:*.pl=0;38;5;48:*.td=0;38;5;48:*.ui=0;38;5;149:*.lo=0;38;5;243:*.as=0;38;5;48:*.ll=0;38;5;48:*.md=0;38;5;185:*.sh=0;38;5;48:*.kex=0;38;5;186:*.epp=0;38;5;48:*.bcf=0;38;5;243:*.tbz=4;38;5;203:*.jar=4;38;5;203:*.pyd=0;38;5;243:*.ini=0;38;5;149:*.pbm=0;38;5;208:*.h++=0;38;5;48:*.iso=4;38;5;203:*.fon=0;38;5;208:*.htm=0;38;5;185:*.pyo=0;38;5;243:*.ppt=0;38;5;186:*.avi=0;38;5;208:*.xmp=0;38;5;149:*.out=0;38;5;243:*.ico=0;38;5;208:*.kts=0;38;5;48:*.asa=0;38;5;48:*.mov=0;38;5;208:*.tgz=4;38;5;203:*.dmg=4;38;5;203:*.zst=4;38;5;203:*.exe=1;38;5;203:*.ppm=0;38;5;208:*.cgi=0;38;5;48:*.apk=4;38;5;203:*.bmp=0;38;5;208:*.xcf=0;38;5;208:*.fsi=0;38;5;48:*.fsx=0;38;5;48:*.ipp=0;38;5;48:*.xlr=0;38;5;186:*.pgm=0;38;5;208:*.jpg=0;38;5;208:*.pro=0;38;5;149:*.tcl=0;38;5;48:*.eps=0;38;5;208:*.aux=0;38;5;243:*.pod=0;38;5;48:*.ics=0;38;5;186:*.doc=0;38;5;186:*.rst=0;38;5;185:*.swf=0;38;5;208:*.gif=0;38;5;208:*.sbt=0;38;5;48:*.bag=4;38;5;203:*.xml=0;38;5;185:*.psd=0;38;5;208:*.aif=0;38;5;208:*.sxw=0;38;5;186:*.rar=4;38;5;203:*.bak=0;38;5;243:*.odt=0;38;5;186:*.dpr=0;38;5;48:*.mp4=0;38;5;208:*.swp=0;38;5;243:*.gvy=0;38;5;48:*.hxx=0;38;5;48:*.elm=0;38;5;48:*.sql=0;38;5;48:*.sxi=0;38;5;186:*.bib=0;38;5;149:*.bat=1;38;5;203:*.zsh=0;38;5;48:*.cxx=0;38;5;48:*.inc=0;38;5;48:*.vcd=4;38;5;203:*.pps=0;38;5;186:*.rpm=4;38;5;203:*.tmp=0;38;5;243:*.wav=0;38;5;208:*.htc=0;38;5;48:*.ltx=0;38;5;48:*.cpp=0;38;5;48:*.csv=0;38;5;185:*.idx=0;38;5;243:*.mir=0;38;5;48:*.mp3=0;38;5;208:*.fls=0;38;5;243:*.img=4;38;5;203:*.toc=0;38;5;243:*.bsh=0;38;5;48:*.m4v=0;38;5;208:*.git=0;38;5;243:*.dll=1;38;5;203:*.rtf=0;38;5;186:*.cfg=0;38;5;149:*.tar=4;38;5;203:*.xls=0;38;5;186:*.log=0;38;5;243:*.tex=0;38;5;48:*.bst=0;38;5;149:*.pdf=0;38;5;186:*.pas=0;38;5;48:*.wma=0;38;5;208:*.arj=4;38;5;203:*.odp=0;38;5;186:*.nix=0;38;5;149:*.zip=4;38;5;203:*.pkg=4;38;5;203:*.tml=0;38;5;149:*.ps1=0;38;5;48:*.txt=0;38;5;185:*.mkv=0;38;5;208:*.ind=0;38;5;243:*.otf=0;38;5;208:*.c++=0;38;5;48:*.inl=0;38;5;48:*.pid=0;38;5;243:*.wmv=0;38;5;208:*.exs=0;38;5;48:*.ttf=0;38;5;208:*.ogg=0;38;5;208:*.lua=0;38;5;48:*.bbl=0;38;5;243:*.tif=0;38;5;208:*.mli=0;38;5;48:*.pyc=0;38;5;243:*.def=0;38;5;48:*.tsx=0;38;5;48:*.mid=0;38;5;208:*.vim=0;38;5;48:*.yml=0;38;5;149:*.deb=4;38;5;203:*.dox=0;38;5;149:*.php=0;38;5;48:*.bin=4;38;5;203:*.csx=0;38;5;48:*hgrc=0;38;5;149:*.erl=0;38;5;48:*.png=0;38;5;208:*.m4a=0;38;5;208:*.awk=0;38;5;48:*.sty=0;38;5;243:*.flv=0;38;5;208:*.dot=0;38;5;48:*.svg=0;38;5;208:*.com=1;38;5;203:*.ods=0;38;5;186:*TODO=1:*.fnt=0;38;5;208:*.hpp=0;38;5;48:*.blg=0;38;5;243:*.vob=0;38;5;208:*.bz2=4;38;5;203:*.mpg=0;38;5;208:*.clj=0;38;5;48:*.ilg=0;38;5;243:*.dart=0;38;5;48:*.epub=0;38;5;186:*.opus=0;38;5;208:*.toml=0;38;5;149:*.lock=0;38;5;243:*.mpeg=0;38;5;208:*.fish=0;38;5;48:*.bash=0;38;5;48:*.psd1=0;38;5;48:*.make=0;38;5;149:*.xlsx=0;38;5;186:*.lisp=0;38;5;48:*.diff=0;38;5;48:*.psm1=0;38;5;48:*.json=0;38;5;149:*.h264=0;38;5;208:*.docx=0;38;5;186:*.webm=0;38;5;208:*.orig=0;38;5;243:*.tiff=0;38;5;208:*.jpeg=0;38;5;208:*.html=0;38;5;185:*.conf=0;38;5;149:*.hgrc=0;38;5;149:*.rlib=0;38;5;243:*.java=0;38;5;48:*.purs=0;38;5;48:*.tbz2=4;38;5;203:*.yaml=0;38;5;149:*.pptx=0;38;5;186:*.flac=0;38;5;208:*.less=0;38;5;48:*.scala=0;38;5;48:*.shtml=0;38;5;185:*.mdown=0;38;5;185:*.cabal=0;38;5;48:*.xhtml=0;38;5;185:*.ipynb=0;38;5;48:*.class=0;38;5;243:*.swift=0;38;5;48:*.patch=0;38;5;48:*shadow=0;38;5;149:*.dyn_o=0;38;5;243:*passwd=0;38;5;149:*.cache=0;38;5;243:*.toast=4;38;5;203:*.cmake=0;38;5;149:*README=0;38;5;16;48;5;186:*.gradle=0;38;5;48:*.config=0;38;5;149:*.matlab=0;38;5;48:*.ignore=0;38;5;149:*COPYING=0;38;5;249:*.groovy=0;38;5;48:*TODO.md=1:*LICENSE=0;38;5;249:*INSTALL=0;38;5;16;48;5;186:*.dyn_hi=0;38;5;243:*.flake8=0;38;5;149:*Doxyfile=0;38;5;149:*TODO.txt=1:*.desktop=0;38;5;149:*.gemspec=0;38;5;149:*setup.py=0;38;5;149:*Makefile=0;38;5;149:*.markdown=0;38;5;185:*.rgignore=0;38;5;149:*.kdevelop=0;38;5;149:*.cmake.in=0;38;5;149:*.fdignore=0;38;5;149:*README.md=0;38;5;16;48;5;186:*configure=0;38;5;149:*COPYRIGHT=0;38;5;249:*.DS_Store=0;38;5;243:*Dockerfile=0;38;5;149:*.gitignore=0;38;5;149:*INSTALL.md=0;38;5;16;48;5;186:*SConstruct=0;38;5;149:*SConscript=0;38;5;149:*CODEOWNERS=0;38;5;149:*.scons_opt=0;38;5;243:*.gitconfig=0;38;5;149:*.localized=0;38;5;243:*README.txt=0;38;5;16;48;5;186:*.travis.yml=0;38;5;186:*INSTALL.txt=0;38;5;16;48;5;186:*.gitmodules=0;38;5;149:*Makefile.in=0;38;5;243:*MANIFEST.in=0;38;5;149:*Makefile.am=0;38;5;149:*LICENSE-MIT=0;38;5;249:*.synctex.gz=0;38;5;243:*.applescript=0;38;5;48:*configure.ac=0;38;5;149:*CONTRIBUTORS=0;38;5;16;48;5;186:*appveyor.yml=0;38;5;186:*.fdb_latexmk=0;38;5;243:*.clang-format=0;38;5;149:*.gitattributes=0;38;5;149:*LICENSE-APACHE=0;38;5;249:*CMakeCache.txt=0;38;5;243:*CMakeLists.txt=0;38;5;149:*CONTRIBUTORS.md=0;38;5;16;48;5;186:*.sconsign.dblite=0;38;5;243:*requirements.txt=0;38;5;149:*CONTRIBUTORS.txt=0;38;5;16;48;5;186:*package-lock.json=0;38;5;243:*.CFUserTextEncoding=0;38;5;243'

# Setting default editor
export EDITOR=nano

# To have colors for ls and all grep commands such as grep, egrep and zgrep
export CLICOLOR=1

# Color for manpages in less makes manpages a little easier to read
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

### Auto completion workarounds ###
#Bash-completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

#auto completion for sudo commands
complete -cf sudo

#pass completion
source /usr/share/bash-completion/completions/pass
_passred(){
    PASSWORD_STORE_DIR=~/.pass/red/ _pass
}
complete -o filenames -o nospace -F _passred passred
_passblue(){
    PASSWORD_STORE_DIR=~/.pass/blue/ _pass
}
complete -o filenames -o nospace -F _passblue passblue

# ccache
#export PATH="/usr/lib/ccache:$PATH"

# xfce4 startup
#if [ "$(tty)" = "/dev/tty1" -o "$(tty)" = "/dev/vc/1" ] ; then
#  startxfce4
#fi

# openbox startup
#if [ "$(tty)" = "/dev/tty2" -o "$(tty)" = "/dev/vc/2" ] ; then
#  startx
#fi

# dotfiles
source /usr/share/bash-completion/completions/git
__git_complete dotfiles __git_main
