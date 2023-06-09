

    CREATE TEMP TABLE abc(a, b, c);
    SELECT sql FROM sqlite_temp_master;
  


    SELECT sql FROM temp.sqlite_master;
  

ALTER TABLE abc ADD d INTEGER;

    SELECT sql FROM sqlite_temp_master;
  


    SELECT sql FROM temp.sqlite_master;
  

ALTER TABLE abc ADD e

    SELECT sql FROM sqlite_temp_master;
  


    SELECT sql FROM temp.sqlite_master;
  


    CREATE TABLE temp.t1(a, b);
    ALTER TABLE t1 ADD c;
    SELECT sql FROM sqlite_temp_master WHERE tbl_name = 't1';
  


    SELECT sql FROM temp.sqlite_master WHERE tbl_name = 't1';
  


    ALTER TABLE t1 ADD d CHECK (a>d);
    SELECT sql FROM sqlite_temp_master WHERE tbl_name = 't1';
  


      CREATE TEMP TABLE t2(a, b, UNIQUE(a, b));
      ALTER TABLE t2 ADD c REFERENCES t1(c)  ;
      SELECT sql FROM sqlite_temp_master
       WHERE tbl_name = 't2' AND type = 'table';
    


    CREATE TEMPORARY TABLE t3(a, b, UNIQUE(a, b));
    ALTER TABLE t3 ADD COLUMN c VARCHAR(10, 20);
    SELECT sql FROM sqlite_temp_master
     WHERE tbl_name = 't3' AND type = 'table';
  


    # May not exist if foriegn-keys are omitted at compile time.
    DROP TABLE t2; 
  

    DROP TABLE abc; 
    DROP TABLE t1; 
    DROP TABLE t3; 
  
