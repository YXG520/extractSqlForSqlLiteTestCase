

    INSERT INTO abc SELECT * FROM abc;
    INSERT INTO abc SELECT * FROM abc;
    INSERT INTO abc SELECT * FROM abc;
    INSERT INTO abc SELECT * FROM abc;
    INSERT INTO abc SELECT * FROM abc;
  


       BEGIN;
       SELECT random() FROM abc LIMIT $i;
       INSERT INTO abc VALUES(randstr(10,10), 0, 0);
       DELETE FROM abc WHERE random()%10!=0;
       COMMIT;
     

