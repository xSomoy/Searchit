connectionTest
opParam="$1"
tmpQuery="$@"
tmpBrowser=$(cat ~/.config/SearchitTerminal/searchit.cfg | grep "Browser")
tmpBrowser=${tmpBrowser/Default\ Browser:\ }
tmpBrowser=${tmpBrowser//\ /+}
if [ "$tmpBrowser" == "Firefox" ]
    then {
        browser=firefox
    }
elif [ "$tmpBrowser" == "Google+Chrome" ]
    then {
        browser=google-chrome
    }
elif [ "$tmpBrowser" == "Opera" ]
    then {
        browser=opera
    }
elif [ "$tmpBrowser" == "Chromium" ]
    then {
        browser=chromium-browser
    }
elif [ "$tmpBrowser" == "Brave" ]
    then {
        browser=brave-browser
    }
elif [ "$tmpBrowser" == "Vivaldi" ]
    then {
        browser=vivaldi
    }
elif [ "$tmpBrowser" == "Links" ]
    then {
        browser=links
    }
elif [ "$tmpBrowser" == "W3m" ]
    then {
        browser=w3m
    }
elif [ "$tmpBrowser" == "Lynx" ]
    then {
        browser=lynx
    }
else {
    echo "${orange}${blink}ERROR: Unable to read configuration file${normal}"
}
fi
query=${tmpQuery//\ /+}
if [ "$opParam" == '-image' ]  || [ "$opParam" == '-img' ]
    then {
      query=${query/-img+}
      query=${query/-image+}
      option="&tbm=isch"
    }
elif [ "$opParam" == '-video' ] || [ "$opParam" == '-vid' ]
    then {
      query=${query/-vid+}
      query=${query/-video+}
      option="&tbm=vid"
}
elif [ "$opParam" == '-news' ] || [ "$opParam" == '-nws' ]
    then {
      query=${query/-nws+}
      query=${query/-news+}
      option="&tbm=nws"
}
elif [ "$opParam" == '-books' ] || [ "$opParam" == '-bks' ]
    then {
      query=${query/-bks+}
      query=${query/-books+}
      option="&tbm=bks"
}
elif [ "$opParam" == '-finance' ] || [ "$opParam" == '-fnc' ]
    then {
      query=${query/-fnc+}
      query=${query/-finance+}
      option="&tbm=fin"
}
elif [ "$opParam" == '-maps' ] || [ "$opParam" == '-map' ]
      then {
        query=${query/-map+}
        query=${query/-maps+}
        query=${query/-ggl+}
        query=${query/-google+}
        $browser www.google.com/maps?q=$query
      exit
}
elif [ "$opParam" == '-help' ] || [ "$opParam" == '-h' ] || [ "$opParam" == '-?' ]
  then {
    echo "${aqua}${bold}Google Search Filters:${normal}
            For Images     -image       -img
            For Videos     -video       -vid
            For News       -news        -nws
            For Books      -books       -bks
            For Finance    -finance     -fnc
            For Maps       -maps        -map
    "
    exit
}
else {
      option=""
}
fi
query=${query/-ggl+}
query=${query/-google+}
$browser www.google.com/search?q=$query$option
