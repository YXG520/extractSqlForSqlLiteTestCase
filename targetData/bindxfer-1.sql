
CREATE TABLE t1(a,b,c);
SELECT ?, ?, ?


SELECT ?, ?, ?



} static
    sqlite_bind $VM1 3 {

} null
    sqlite3_transfer_bindings $VM1 $VM2
    sqlite_step $VM1 VALUES COLNAMES
  



