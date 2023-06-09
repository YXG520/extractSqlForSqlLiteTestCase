

       BEGIN;
       SELECT random() FROM abc LIMIT $i;
       INSERT INTO abc SELECT randstr(10,10), 0, 0 FROM abc WHERE random()%2==0;
       DELETE FROM abc WHERE random()%2!=0;
       COMMIT;
     

