proc attri {} {

    set ins [filter_collection [get_cells] is_hierarchical==false]
    set new_list {}
    foreach_in_collection k $ins {lappend new_list [ get_attribute $k ref_name]}
	
    set sortlister [lsort -unique $new_list]
    foreach item $new_list {
            if {[info exists count($item)]} {
                incr count($item)
            } else {
                set count($item) 1
            }
        }

    foreach i $sortlister {
     puts "$i \t $count($i)"

}

}    
