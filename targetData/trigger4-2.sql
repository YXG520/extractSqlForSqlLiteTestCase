

    create trigger U_test instead of update on test
      begin
        update test1 set a=NEW.a where id=NEW.id;
        update test2 set b=NEW.b where id=NEW.id;
      end;
    update test set a=22 where id=1;
    select * from test1;
  


    select * from test2;
  


    update test set b=66 where id=4;
    select * from test1;
  


    select * from test2;
  
