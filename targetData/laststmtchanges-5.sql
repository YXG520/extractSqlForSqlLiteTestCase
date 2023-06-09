

        drop table t0; drop table t1; drop table t2;
        create temp table t0(x);
        create temp table t1 (k integer primary key);
        create temp table t2 (k integer primary key);
        create temp view v1 as select * from t1;
        create temp view v2 as select * from t2;
        create temp table n1 (k integer primary key, n);
        create temp table n2 (k integer primary key, n);
        insert into t0 values (1);
        insert into t0 values (2);
        insert into t0 values (1);
        insert into t0 values (1);
        insert into t0 values (1);
        insert into t0 values (2);
        insert into t0 values (2);
        insert into t0 values (1);
        create temp trigger r1 instead of insert on v1 for each row begin
            insert into n1 values (NULL, changes());
            update t0 set x=x*10 where x=1;
            insert into n1 values (NULL, changes());
            insert into t1 values (NEW.k);
            insert into n1 values (NULL, changes());
            update t0 set x=x*10 where x=0;
            insert into v2 values (100+NEW.k);
            insert into n1 values (NULL, changes());
        end;
        create temp trigger r2 instead of insert on v2 for each row begin
            insert into n2 values (NULL, changes());
            insert into t2 values (1000+NEW.k);
            insert into n2 values (NULL, changes());
            update t0 set x=x*100 where x=0;
            insert into n2 values (NULL, changes());
            delete from t0 where x=2;
            insert into n2 values (NULL, changes());
        end;
        insert into t1 values (77);
        select changes();
    


        delete from t1 where k=88;
        select changes();
    


        insert into v1 values (5);
        select changes();
    


        select n from n1;
    


        select n from n2;
    
