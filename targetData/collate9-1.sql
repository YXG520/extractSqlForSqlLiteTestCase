

    CREATE TABLE xy(x COLLATE "reverse sort", y COLLATE binary);
    INSERT INTO xy VALUES('one', 'one');
    INSERT INTO xy VALUES('two', 'two');
    INSERT INTO xy VALUES('three', 'three');
  

 
    SELECT x FROM xy ORDER BY x
  

 
    SELECT y FROM xy ORDER BY y
  

S

 
    CREATE INDEX xy_i ON xy(x)
  

S
