

    CREATE TABLE collate5t1(a COLLATE nocase, b COLLATE text);

    INSERT INTO collate5t1 VALUES('a', 'apple');
    INSERT INTO collate5t1 VALUES('A', 'Apple');
    INSERT INTO collate5t1 VALUES('b', 'banana');
    INSERT INTO collate5t1 VALUES('B', 'banana');
    INSERT INTO collate5t1 VALUES('n', NULL);
    INSERT INTO collate5t1 VALUES('N', NULL);
  


    SELECT DISTINCT a FROM collate5t1;
  


    SELECT DISTINCT b FROM collate5t1;
  


    SELECT DISTINCT a, b FROM collate5t1;
  


    CREATE TABLE tkt3376(a COLLATE nocase PRIMARY KEY);
    INSERT INTO tkt3376 VALUES('abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz');
    INSERT INTO tkt3376 VALUES('ABXYZ012234567890123456789ABXYZ012234567890123456789ABXYZ012234567890123456789ABXYZ012234567890123456789ABXYZ012234567890123456789ABXYZ012234567890123456789ABXYZ012234567890123456789');
    SELECT DISTINCT a FROM tkt3376;
  


    PRAGMA encoding=UTF16le;
    CREATE TABLE tkt3376(a COLLATE nocase PRIMARY KEY);
    INSERT INTO tkt3376 VALUES('abc');
    INSERT INTO tkt3376 VALUES('ABX');
    SELECT DISTINCT a FROM tkt3376;
  
