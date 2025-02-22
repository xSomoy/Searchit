# Pinterest Search Function

function pinterest() {
    dbCheck
    query=${tmpquery//\ /+}
    if [ "$opParam" == '-mypin' ] || [ "$opParam" == '-my' ]
            then {
              query=${query/-my+}
              query=${query/-mypin+}
              option="mypins"
        }
    elif [ "$opParam" == '-pdt' ] || [ "$opParam" == '-product' ]
            then {
              query=${query/-pdt+}
              query=${query/-product+}
              option="buyable_pins"
      }
    elif [ "$opParam" == '-people' ] || [ "$opParam" == '-ppl' ]
            then {
              query=${query/-ppl+}
              query=${query/-people+}
              option="users"
      }
    elif [ "$opParam" == '-board' ] || [ "$opParam" == '-brd' ]
            then {
              query=${query/-brd+}
              query=${query/-board+}
              option="boards"
      }
    elif [ "$opParam" == '-help' ] || [ "$opParam" == '-h' ] || [ "$opParam" == '-?' ]
          then {
            echo "  ${aqua}${bold}Pinterest Search Filters: ${normal}
                    For Your Pins           -mypin       -my
                    For Product Pins        -product     -pdt
                    For People              -people      -ppl
                    For Boards              -board       -brd
                 "
            exit
      }
    else {
          option="pins"
        }
    fi
    query=${query/-pntr+}
    query=${query/-pinterest+}
    $browser www.pinterest.com/search/$option/?q=$query
}
