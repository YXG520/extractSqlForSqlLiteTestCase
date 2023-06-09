
/D/ {

}


PRAGMA foreign_key_check(t1)


PRAGMA foreign_key_check(t2)


PRAGMA foreign_key_check(t3)


PRAGMA foreign_key_check(t4)


PRAGMA foreign_key_check(t7)


PRAGMA foreign_key_check(t8)

}


/D/ {DEFERRABLE INITIALLY DEFERRED


PRAGMA foreign_key_check(t1)


PRAGMA foreign_key_check(t2)


PRAGMA foreign_key_check(t3)


PRAGMA foreign_key_check(t4)


PRAGMA foreign_key_check(t7)


PRAGMA foreign_key_check(t8)

}


/D/ {

}
 PRAGMA count_changes = 1 


PRAGMA foreign_key_check(t1)


PRAGMA foreign_key_check(t2)


PRAGMA foreign_key_check(t3)


PRAGMA foreign_key_check(t4)


PRAGMA foreign_key_check(t7)


PRAGMA foreign_key_check(t8)

}

 PRAGMA count_changes = 0 

/D/ {

}
 PRAGMA count_changes = 1 

 PRAGMA count_changes = 0 


    CREATE TABLE i(i INT PRIMARY KEY) WITHOUT rowid;
    CREATE TABLE j(j REFERENCES i);
    INSERT INTO i VALUES(35);
    INSERT INTO j VALUES('35.0');
    SELECT j, typeof(j) FROM j;
  

 DELETE FROM i 


    CREATE TABLE i(i INT UNIQUE);
    CREATE TABLE j(j REFERENCES i(i));
    INSERT INTO i VALUES('35.0');
    INSERT INTO j VALUES('35.0');
    SELECT j, typeof(j) FROM j;
    SELECT i, typeof(i) FROM i;
  

 DELETE FROM i 


    CREATE TABLE i(i TEXT COLLATE nocase PRIMARY KEY) WITHOUT rowid;
    CREATE TABLE j(j TEXT COLLATE binary REFERENCES i(i));
    INSERT INTO i VALUES('SQLite');
    INSERT INTO j VALUES('sqlite');
  
 DELETE FROM i 


    CREATE TABLE i(i TEXT PRIMARY KEY) WITHOUT rowid;  -- Colseq is "BINARY"
    CREATE TABLE j(j TEXT COLLATE nocase REFERENCES i(i));
    INSERT INTO i VALUES('SQLite');
  
 INSERT INTO j VALUES('sqlite') 


    INSERT INTO i VALUES('sqlite');
    INSERT INTO j VALUES('sqlite');
    DELETE FROM i WHERE i = 'SQLite';
  
 DELETE FROM i WHERE i = 'sqlite' 
res {

}

  if {$res eq "FKV"
