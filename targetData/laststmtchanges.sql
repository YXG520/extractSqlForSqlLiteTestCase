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
    

select changes()
update t0 set x=3 where x=4
update t0 set x=x+changes() where x=3;
        select count() from t0 where x=8;
    
update t0 set x=77 where x=88;
        select changes();
    
delete from t0 where x=2;
        select changes();
    
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
    
drop trigger r1;
        delete from t2; delete from t2;
        create trigger r1 after update on t1 for each row begin
            insert into t2 values (NULL, changes(), NULL);
            delete from t0 where oid=1 or oid=2;
            update t2 set v2=changes();
        end;
        update t1 set k=k;
        select changes();
    
select v1 from t2;
    
select v2 from t2;
    
drop trigger r1;
        delete from t2; delete from t2;
        create trigger r1 before delete on t1 for each row begin
            insert into t2 values (NULL, changes(), NULL);
            insert into t0 values (5);
            update t2 set v2=changes();
        end;
        delete from t1;
        select changes();
    
select v1 from t2;
    
select v2 from t2;
    
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
    
CREATE TABLE t3(a, b, c);
    INSERT INTO t3 VALUES(1, 2, 3);
    INSERT INTO t3 VALUES(4, 5, 6);
  
BEGIN;
    DELETE FROM t3;
    SELECT changes();
  
ROLLBACK;
    BEGIN;
    DELETE FROM t3 WHERE a IS NOT NULL;
    SELECT changes();
  
ROLLBACK;
    CREATE INDEX t3_i1 ON t3(a);
    BEGIN;
    DELETE FROM t3;
    SELECT changes();
  
ROLLBACK 
SELECT total_changes()
SELECT total_changes();
    DELETE FROM t3;
    SELECT total_changes();
  
