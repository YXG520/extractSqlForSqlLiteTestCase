

        create table t1 (k integer primary key);
        create table t2 (k integer primary key, v1, v2);
        create trigger r1 after insert on t1 for each row begin
            insert into t2 values (NULL, changes(), NULL);
            update t0 set x=x;
            update t2 set v2=changes();
        end;
        insert into t1 values (77);
        select changes();
    


        select v1 from t2;
    


        select v2 from t2;
    

