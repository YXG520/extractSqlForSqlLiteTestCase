

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
    
