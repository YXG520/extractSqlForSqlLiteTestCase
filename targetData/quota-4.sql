

}
  quota_list



}
  quota_list



}
  quota_list



}
  quota_list



}
  quota_list


CREATE TABLE t2(x); INSERT INTO t2 VALUES('tab-t2');

INSERT INTO t2 VALUES(zeroblob(200000))

SELECT * FROM t2


}
  catchsql {INSERT INTO t2 VALUES(zeroblob(200000))





}
  sqlite3_quota_set B 1000 {

}
  sqlite3_quota_set C 1000 {

}
  sqlite3_quota_set D 1000 {

}
  quota_list



}
  sqlite3_quota_set B 0 {

}
  quota_list



}
  sqlite3_quota_set D 0 {

}
  quota_list



}
  sqlite3_quota_set B 1000 {

}
  sqlite3_quota_set C 1000 {

}
  sqlite3_quota_set A 0 {

}
  sqlite3_quota_set B 0 {

}
  sqlite3_quota_set C 0 {

}
  quota_list



}
  sqlite3_quota_set B 1000 {

}
  sqlite3_quota_set C 1000 {

}
  sqlite3_quota_set C 0 {

}
  sqlite3_quota_set B 0 {

}
  sqlite3_quota_set A 0 {

}
  quota_list




     CREATE TABLE t1(x);
     INSERT INTO t1 VALUES(randomblob(5000));
  



     CREATE TABLE t1(x);
     INSERT INTO t1 VALUES(randomblob(5000));
  



}
  sqlite3_quota_dump


SELECT count(*) FROM sqlite_master











}
  quota_size $::quotagroup





