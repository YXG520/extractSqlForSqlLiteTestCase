2 "select t1.id as ID from t1, t2 where t1.id=t2.host and t2.class='xx'"
      3 {
        select t1.id as ID from t1, t2 where t2.class ='xx' and t2.id = t1.host
      

CREATE VIRTUAL TABLE x1 USING tcl(vtab_command);
  CREATE TABLE t1 (x INT PRIMARY KEY);

