

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
    
