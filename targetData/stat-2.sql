

  CREATE TABLE t3(a PRIMARY KEY, b);
  INSERT INTO t3(rowid, a, b) VALUES(2, a_string(111), a_string(222));
  INSERT INTO t3 SELECT a_string(110+rowid), a_string(221+rowid) FROM t3
   ORDER BY rowid;
  INSERT INTO t3 SELECT a_string(110+rowid), a_string(221+rowid) FROM t3
   ORDER BY rowid;
  INSERT INTO t3 SELECT a_string(110+rowid), a_string(221+rowid) FROM t3
   ORDER BY rowid;
  INSERT INTO t3 SELECT a_string(110+rowid), a_string(221+rowid) FROM t3
   ORDER BY rowid;
  INSERT INTO t3 SELECT a_string(110+rowid), a_string(221+rowid) FROM t3
   ORDER BY rowid;
  SELECT name, path, pageno, pagetype, ncell, payload, unused, mx_payload
    FROM stat WHERE name != 'sqlite_schema' ORDER BY name;



  SELECT * FROM dbstat WHERE aggregate=TRUE ORDER BY name;


}  5 {

} 32  3898 1065 132 {

}  5120 \
  sqlite_schema         {

}  1 {

}  2    84  824  49 {

}  1024 \
  t3                    {


  UPDATE t3 SET a=a||hex(randomblob(700));
  VACUUM;
  SELECT pageno FROM stat EXCEPT SELECT pageno-1 FROM stat;


 DROP TABLE t3; VACUUM; 

