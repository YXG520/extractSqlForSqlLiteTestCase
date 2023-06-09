

        drop table t1; drop table t2; drop trigger r1;
        create temp table t1 (k integer primary key);
        create temp table t2 (k integer primary key);
        create temp view v1 as select * from t1;
        create temp view v2 as select * from t2;
        create temp table rid (k integer primary key, rin, rout);
        insert into rid values (1, NULL, NULL);
        insert into rid values (2, NULL, NULL);
        create temp trigger r1 instead of insert on v1 for each row begin
            update rid set rin=last_insert_rowid() where k=1;
            insert into t1 values (100+NEW.k);
            insert into v2 values (100+last_insert_rowid());
            update rid set rout=last_insert_rowid() where k=1;
        end;
        create temp trigger r2 instead of insert on v2 for each row begin
            update rid set rin=last_insert_rowid() where k=2;
            insert into t2 values (1000+NEW.k);
            update rid set rout=last_insert_rowid() where k=2;
        end;
        insert into t1 values (77);
        select last_insert_rowid();
    


        insert into v1 values (5);
        select last_insert_rowid();
    


        select rin from rid where k=1;
    


        select rout from rid where k=1;
    


        select rin from rid where k=2;
    


        select rout from rid where k=2;
    
