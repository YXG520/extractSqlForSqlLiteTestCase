set r [db eval $sql]
  lappend r scan [db status step] sort [db status sort]

