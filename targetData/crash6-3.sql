
pragma page_size = $pagesize
pragma page_size

CREATE TABLE abc(a, b, c)
INSERT INTO abc VALUES($n, [expr 2*$n], [expr 3*$n])

      INSERT INTO abc SELECT * FROM abc;
      INSERT INTO abc SELECT * FROM abc;
      INSERT INTO abc SELECT * FROM abc;
      INSERT INTO abc SELECT * FROM abc;
      INSERT INTO abc SELECT * FROM abc;
    


       BEGIN;
       SELECT random() FROM abc LIMIT $ii;
       INSERT INTO abc SELECT randstr(10,10), 0, 0 FROM abc WHERE random()%2==0;
       DELETE FROM abc WHERE random()%2!=0;
       COMMIT;
     

