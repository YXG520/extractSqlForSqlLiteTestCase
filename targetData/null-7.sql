

      create table t2(a, b unique on conflict ignore);
      insert into t2 values(1,1);
      insert into t2 values(2,null);
      insert into t2 values(3,null);
      insert into t2 values(4,1);
      select a from t2;
    


      create table t3(a, b, c, unique(b,c) on conflict ignore);
      insert into t3 values(1,1,1);
      insert into t3 values(2,null,1);
      insert into t3 values(3,null,1);
      insert into t3 values(4,1,1);
      select a from t3;
    
