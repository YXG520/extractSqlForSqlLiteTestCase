


    CREATE TABLE ${tbl_name}(a, b, c);
  
SELECT max(oid) FROM sqlite_master

    SELECT sql FROM sqlite_master WHERE oid = $::oid;
  

  SELECT * FROM ${::tbl_name}



    ALTER TABLE $::tbl_name RENAME TO $::tbl_name2 
  

    SELECT sql FROM sqlite_master WHERE oid = $::oid
  


    ALTER TABLE $::tbl_name2 RENAME TO $::tbl_name
  

    SELECT sql FROM sqlite_master WHERE oid = $::oid
  


    ALTER TABLE $::tbl_name ADD COLUMN $::col_name VARCHAR
  

    SELECT sql FROM sqlite_master WHERE oid = $::oid
  


    ALTER TABLE $::tbl_name ADD COLUMN $::col_name2
  

    SELECT sql FROM sqlite_master WHERE oid = $::oid
  


    INSERT INTO ${::tbl_name} VALUES(1, 2, 3, 4, 5);
    SELECT $::col_name, $::col_name2 FROM $::tbl_name;
  
