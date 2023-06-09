

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
    
