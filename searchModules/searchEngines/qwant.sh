# Qwant Search Function
function qwant() {
    dbCheck
    query=${tmpquery//\ /+}
    if [ "$opParam" == '-news' ] || [ "$opParam" == '-nws' ]
            then {
              query=${query/-nws+}
              query=${query/-news+}
              option="&t=news"
        }
    elif [ "$opParam" == '-image' ] || [ "$opParam" == '-img' ]
            then {
              query=${query/-img+}
              query=${query/-image+}
              option="&t=images"
      }
    elif [ "$opParam" == '-video' ] || [ "$opParam" == '-vid' ]
        then {
          query=${query/-vid+}
          query=${query/-video+}
          option="&t=videos"
    }
    elif [ "$opParam" == '-social' ] || [ "$opParam" == '-scl' ]
        then {
          query=${query/-scl+}
          query=${query/-social+}
          option="&t=social"
    }
    elif [ "$opParam" == '-shopping' ] || [ "$opParam" == '-spg' ]
       then {
          query=${query/-spg+}
          query=${query/-shopping+}
          option="&t=shopping"
    }
    elif [ "$opParam" == '-maps' ] || [ "$opParam" == '-map' ]
        then {
          query=${query/-map+}
          query=${query/-maps+}
          query=${query/-qwnt+}
          query=${query/-qwant+}
          $browser www.qwant.com/maps/?q=$query
          exit
    }
    elif [ "$opParam" == '-music' ] || [ "$opParam" == '-msc' ]
          then {
            query=${query/-msc+}
            query=${query/-music+}
            query=${query/-qwnt+}
            query=${query/-qwant+}
            $browser www.qwant.com/music/search?q=$query
            exit
    }
    elif [ "$opParam" == '-album' ] || [ "$opParam" == '-abm' ]
          then {
            query=${query/-abm+}
            query=${query/-album+}
            query=${query/-qwnt+}
            query=${query/-qwant+}
            option="&t=albums"
            $browser www.qwant.com/music/search?q=$query$option
            exit
    }
    elif [ "$opParam" == '-artist' ] || [ "$opParam" == '-art' ]
        then {
          query=${query/-art+}
          query=${query/-artist+}
          query=${query/-qwnt+}
          query=${query/-qwant+}
          option="&t=artist"
          $browser www.qwant.com/music/search?q=$query$option
          exit
    }
    elif [ "$opParam" == '-song' ] || [ "$opParam" == '-sng' ]
        then {
          query=${query/-sng+}
          query=${query/-song+}
          query=${query/-qwnt+}
          query=${query/-qwant+}
          option="&t=songs"
          $browser www.qwant.com/music/search?q=$query$option
          exit
    }
    elif [ "$opParam" == '-cause' ] || [ "$opParam" == '-cas' ]
        then {
          query=${query/-cas+}
          query=${query/-cause+}
          query=${query/-qwnt+}
          query=${query/-qwant+}
          $browser www.qwant.com/causes/en_gb?q=$query
          exit
    }
    elif [ "$opParam" == '-causesoverview' ] || [ "$opParam" == '-cvw' ]
        then {
          query=${query/-cvw+}
          query=${query/-causesoverview+}
          query=${query/-qwnt+}
          query=${query/-qwant+}
          $browser www.qwant.com/causes/en_gb/?q=$query
          exit
    }
    elif [ "$opParam" == '-association' ] || [ "$opParam" == '-asn' ]
        then {
          query=${query/-asn+}
          query=${query/-association+}
          query=${query/-qwnt+}
          query=${query/-qwant+}
          $browser www.qwant.com/causes/en_gb/associations?q=$query
          exit
    }
    elif [ "$opParam" == '-help' ] || [ "$opParam" == '-h' ] || [ "$opParam" == '-?' ]
          then {
            echo "  ${aqua}${bold}Qwant Search Filters: ${normal}
                    For News             -news             -nws
                    For Images           -image            -img
                    For Videos           -video            -vid
                    For Social           -social           -scl
                    For Shopping         -shopping         -spg
                    For Maps             -maps             -map
                    For Music            -music            -msc
                      For Albums         -album            -abm
                      For Artist         -artist           -art
                      For Songs          -song             -sng
                    For Causes           -cause            -cas
                      For Causes Overview  -causesoverview   -cvw
                      For Association      -association      -asn
                 "
            exit
      }
    else {
          option="&t=web"
        }
    fi
  query=${query/-qwnt+}
  query=${query/-qwant+}
  $browser www.qwant.com/?q=$query$option
}
