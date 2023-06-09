

        create table t1 (k integer primary key);
        insert into t1 values (1);
        insert into t1 values (NULL);
        insert into t1 values (NULL);
        select last_insert_rowid();
    


        create table t1w (k integer primary key) WITHOUT ROWID;
        insert into t1w values (123456);
        select last_insert_rowid(); -- returns 3 from above.
    


        update t1 set k=4 where k=2;
        select last_insert_rowid();
    


        delete from t1 where k=4;
        select last_insert_rowid();
    


        create table t2 (k integer primary key, val1, val2, val3);
        select last_insert_rowid();
    


        create view v as select * from t1;
        select last_insert_rowid();
    
