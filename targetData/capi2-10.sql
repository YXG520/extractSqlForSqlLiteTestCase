


  set ret [list]
  set ::STMT [sqlite3_prepare $::DB $sql -1 dummy]
  for {set i 0
incr i

    lappend ret [list                           \
      [sqlite3_column_database_name $::STMT $i] \
      [sqlite3_column_table_name $::STMT $i]    \
      [sqlite3_column_origin_name $::STMT $i]   \
    ]
  
