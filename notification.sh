#!/bin/bash

case ${1,,} in
        john | admin)
                notify-send -u low 'Start' 'welcome Admin'
               ;;
        help)
                notify-send -u normal "Not Found"
                ;;
        *)
                title='Not found'
                message='please contact admin'
                notify-send -u critical "$title" "$message"

esac

