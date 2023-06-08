{CREATE TABLE a(id INTEGER, name CHAR(50))
db eval $cmd
  lappend crash4_cksum_set [allcksum db]

db eval {CREATE TABLE a(id INTEGER, name CHAR(50))
