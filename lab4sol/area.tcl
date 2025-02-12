proc testproc { ce } { 
   set c1 "[lindex [lindex $ce 1] 0]"
   set c2 "[lindex [lindex $ce 0] 0]"
   set c3 "[lindex [lindex $ce 1] 1]"
   set c4 "[lindex [lindex $ce 0] 1]"
    set rect_area [expr ($c1-$c2) * ($c3-$c4)]
   puts "$rect_area"

}
