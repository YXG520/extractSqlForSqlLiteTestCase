sqlite3_memory_highwater 1
  set highwater [sqlite3_memory_highwater 0]
  do_test memsubsys2-2.1 {
    sqlite3_free [set x [sqlite3_malloc 100000]]
    expr {$x!="0"
