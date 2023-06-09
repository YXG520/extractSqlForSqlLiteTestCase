
CREATE TABLE t2(

}
  set sql "INSERT INTO t2 VALUES("
  set sep ""
  for {set i 1

}
  sqlite3_get_table_printf $::dbx {SELECT * FROM t2

}


INSERT INTO t2 VALUES(
$i+1000

}
  sqlite3_get_table_printf $::dbx {SELECT * FROM t2

}

