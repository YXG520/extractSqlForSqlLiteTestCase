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
    
delete from t2;
        create trigger r1 after insert on t1 for each row begin
            insert into t2 values (NEW.k*2, last_insert_rowid(), NULL, NULL);
            update t2 set k=k+10, val2=100+last_insert_rowid();
            update t2 set val3=1000+last_insert_rowid();
        end;
        insert into t1 values (13);
        select last_insert_rowid();
    
select val1 from t2;
    
select val2 from t2;
    
select val3 from t2;
    
delete from t2;
        drop trigger r1;
        create trigger r1 after update on t1 for each row begin
            insert into t2 values (NEW.k*2, last_insert_rowid(), NULL, NULL);
            update t2 set k=k+10, val2=100+last_insert_rowid();
            update t2 set val3=1000+last_insert_rowid();
        end;
        update t1 set k=14 where k=3;
        select last_insert_rowid();
    
select val1 from t2;
    
select val2 from t2;
    
select val3 from t2;
    
delete from t2;
        drop trigger r1;
        create trigger r1 instead of insert on v for each row begin
            insert into t2 values (NEW.k*2, last_insert_rowid(), NULL, NULL);
            update t2 set k=k+10, val2=100+last_insert_rowid();
            update t2 set val3=1000+last_insert_rowid();
        end;
        insert into v values (15);
        select last_insert_rowid();
    
select val1 from t2;
    
select val2 from t2;
    
select val3 from t2;
    
drop trigger r1;  -- This was not created if views are disabled.
    
delete from t2;
        create trigger r1 before delete on t1 for each row begin
            insert into t2 values (77, last_insert_rowid(), NULL, NULL);
            update t2 set k=k+10, val2=100+last_insert_rowid();
            update t2 set val3=1000+last_insert_rowid();
        end;
        delete from t1 where k=1;
        select last_insert_rowid();
    
select val1 from t2;
    
select val2 from t2;
    
select val3 from t2;
    
delete from t2;
        drop trigger r1;
        create trigger r1 instead of update on v for each row begin
            insert into t2 values (NEW.k*2, last_insert_rowid(), NULL, NULL);
            update t2 set k=k+10, val2=100+last_insert_rowid();
            update t2 set val3=1000+last_insert_rowid();
        end;
        update v set k=16 where k=14;
        select last_insert_rowid();
    
select val1 from t2;
    
select val2 from t2;
    
select val3 from t2;
    
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
    
CREATE TABLE t2(x INTEGER PRIMARY KEY, y);
    CREATE TABLE t3(a, b);
    CREATE TRIGGER after_t2 AFTER INSERT ON t2 BEGIN
      INSERT INTO t3 VALUES(new.x, new.y);
    END;
    INSERT INTO t2 VALUES(5000000000, 1);
    SELECT last_insert_rowid();
  
