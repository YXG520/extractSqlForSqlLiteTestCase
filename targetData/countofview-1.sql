

  CREATE TABLE t2(c);
  CREATE TABLE t3(f);

  INSERT INTO t2 VALUES(1), (2);
  INSERT INTO t3 VALUES(3);



  select c from t2 union all select f from t3 limit 1 offset 1



  select count(*) from (
    select c from t2 union all select f from t3 limit 1 offset 1
  )



  select count(*) from (
    select c from t2 union all select f from t3
  )

