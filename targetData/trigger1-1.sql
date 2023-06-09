

     CREATE TRIGGER trig UPDATE ON no_such_table BEGIN
       SELECT * from sqlite_master;
     END;
   


       CREATE TEMP TRIGGER trig UPDATE ON no_such_table BEGIN
         SELECT * from sqlite_master;
       END;
     

    CREATE TABLE t1(a);



     CREATE TRIGGER trig UPDATE ON t1 FOR EACH STATEMENT BEGIN
        SELECT * FROM sqlite_master;
     END;
  

        CREATE TRIGGER tr1 INSERT ON t1 BEGIN
          INSERT INTO t1 values(1);
         END;



        CREATE TRIGGER IF NOT EXISTS tr1 DELETE ON t1 BEGIN
            SELECT * FROM sqlite_master;
         END
     


        CREATE TRIGGER tr1 DELETE ON t1 BEGIN
            SELECT * FROM sqlite_master;
         END
     


        CREATE TRIGGER "tr1" DELETE ON t1 BEGIN
            SELECT * FROM sqlite_master;
         END
     


        CREATE TRIGGER [tr1] DELETE ON t1 BEGIN
            SELECT * FROM sqlite_master;
         END
     


        BEGIN;
        CREATE TRIGGER tr2 INSERT ON t1 BEGIN
            SELECT * from sqlite_master; END;
        ROLLBACK;
        CREATE TRIGGER tr2 INSERT ON t1 BEGIN
            SELECT * from sqlite_master; END;
    


        DROP TRIGGER IF EXISTS tr1;
        CREATE TRIGGER tr1 DELETE ON t1 BEGIN
            SELECT * FROM sqlite_master;
        END
    


        BEGIN;
        DROP TRIGGER tr2;
        ROLLBACK;
        DROP TRIGGER tr2;
    


        DROP TRIGGER IF EXISTS biggles;
    


        DROP TRIGGER biggles;
    


        DROP TABLE t1;
        DROP TRIGGER tr1;
    

    CREATE TEMP TABLE temp_table(a);
  


          CREATE TRIGGER temp_trig UPDATE ON temp_table BEGIN
              SELECT * from sqlite_master;
          END;
          SELECT count(*) FROM sqlite_master WHERE name = 'temp_trig';
    


    CREATE TRIGGER tr1 AFTER UPDATE ON sqlite_master BEGIN
       SELECT * FROM sqlite_master;
    END;
  


    create table t1(a,b);
    insert into t1 values(1,'a');
    insert into t1 values(2,'b');
    insert into t1 values(3,'c');
    insert into t1 values(4,'d');
    create trigger r1 after delete on t1 for each row begin
      delete from t1 WHERE a=old.a+2;
    end;
    delete from t1 where a=1 OR a=3;
    select * from t1;
    drop table t1;
  


    create table t1(a,b);
    insert into t1 values(1,'a');
    insert into t1 values(2,'b');
    insert into t1 values(3,'c');
    insert into t1 values(4,'d');
    create trigger r1 after update on t1 for each row begin
      delete from t1 WHERE a=old.a+2;
    end;
    update t1 set b='x-' || b where a=1 OR a=3;
    select * from t1;
    drop table t1;
  


    create table t1(a,b);
    create trigger t1t instead of update on t1 for each row begin
      delete from t1 WHERE a=old.a+2;
    end;
  


    create view v1 as select * from t1;
    create trigger v1t before update on v1 for each row begin
      delete from t1 WHERE a=old.a+2;
    end;
  


    drop view v1;
    create view v1 as select * from t1;
    create trigger v1t AFTER update on v1 for each row begin
      delete from t1 WHERE a=old.a+2;
    end;
  
