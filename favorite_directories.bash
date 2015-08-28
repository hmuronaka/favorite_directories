FAVORITES_PATH=~/.favorite_directories/bin/favorites
if [ -f $FAVORITES_PATH ]; then
  f() {
    if [ $# -eq 0 ]; then
      SELECTED_PATH=`~/$FAVORITES_PATH`
      if [ $? -eq 0 ]; then
        pushd "${SELECTED_PATH}"
      fi
    elif [ "$0" =~ "^--"  ]; then
      $FAVORITES_PATH $@
    else # move dir
      SELECTED_PATH=`$FAVORITES_PATH $@`
      if [ $? -eq 0 ]; then
        pushd "${SELECTED_PATH}"
      fi
    fi
  }

  _f() {
    FAVORITE_NAMES=`$FAVORITES_PATH --list-names`
    COMPREPLY=( `compgen -W "${FAVORITE_NAMES}" $2`)
  }

  complete -F _f f
fi


