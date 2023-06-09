
SELECT offsets(t3) as o FROM t3 WHERE t3 MATCH 'l*'

    set l [llength $o]
    lappend t [expr {$l/4
