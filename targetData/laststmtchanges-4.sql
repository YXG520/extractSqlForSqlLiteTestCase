

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
    
