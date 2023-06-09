

      create table t2(x unique);
      insert into t2 values(1);
      insert or ignore into t2 select x*2 from t2;
      insert or ignore into t2 select x*4 from t2;
      insert or ignore into t2 select x*16 from t2;
      insert or ignore into t2 select x*256 from t2;
      insert or ignore into t2 select x*65536 from t2;
      insert or ignore into t2 select x*2147483648 from t2;
      insert or ignore into t2 select x-1 from t2;
      insert or ignore into t2 select x+1 from t2;
      insert or ignore into t2 select -x from t2;
      select count(*) from t2;
    


      BEGIN;
      create table t2(x unique);
      create table t2_temp(x);
      insert into t2_temp values(1);
      insert into t2_temp select x*2 from t2_temp;
      insert into t2_temp select x*4 from t2_temp;
      insert into t2_temp select x*16 from t2_temp;
      insert into t2_temp select x*256 from t2_temp;
      insert into t2_temp select x*65536 from t2_temp;
      insert into t2_temp select x*2147483648 from t2_temp;
      insert into t2_temp select x-1 from t2_temp;
      insert into t2_temp select x+1 from t2_temp;
      insert into t2_temp select -x from t2_temp;
      INSERT INTO t2 SELECT DISTINCT(x) FROM t2_temp;
      DROP TABLE t2_temp;
      COMMIT;
      select count(*) from t2;
    


    select x from t2 order by x;
  
