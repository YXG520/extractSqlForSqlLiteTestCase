

      create table t4(a,b);
      create table t5(a,c);
      insert into t4 values (1,2);
      insert into t5 values (1,3);
      create view myview as select t4.a a from t4 inner join t5 on t4.a=t5.a;
      create table problem as select * from myview; 
    

      select * FROM problem;
    


      create table t6 as select * from t4, t5;
      select * from t6;
    
