#!/bin/env bash

deps() {
  if ! type -p $1 &> /dev/null 
  then
      echo "'$1' must be installed to run this script."
      exit 126
  fi
}

deps "cmd1"
deps "cmd2"

help() {
  cat <<_EOF
    example script

    usage: 
      
      example <command> [<arg> ...]

    commands:

      green   <arg>     do the green thing
      red               do the red thing

      help              print help
_EOF
}

(( $# < 1 )) && {
    help
    exit 126
}

case "$1" in
    green)
        (( $# != 2 )) && {
            help
            exit 126
        }
        echo "green $2"
        ;;
    red)
        echo "red"
        ;;
    help)
        help
        ;;
    *)
        help
        exit 126
        ;;
esac
