

        create table t0 (x);
        insert into t0 values (1);
        insert into t0 values (1);
        insert into t0 values (2);
        insert into t0 values (2);
        insert into t0 values (1);
        insert into t0 values (1);
        insert into t0 values (1);
        insert into t0 values (2);
        select changes(), total_changes();
    


        update t0 set x=3 where x=1;
        select changes(), total_changes();
    

update t0 set x=4 where x=3; select 1;

}
    execsql {select changes()

update t0 set x=3 where x=4

        update t0 set x=x+changes() where x=3;
        select count() from t0 where x=8;
    


        update t0 set x=77 where x=88;
        select changes();
    


        delete from t0 where x=2;
        select changes();
    
