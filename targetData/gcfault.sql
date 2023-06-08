CREATE TABLE s(i, s);
    INSERT INTO s VALUES(1, ',0123456789,');
    INSERT INTO s VALUES(2, X'2c303132333435363738392c');

    CREATE TABLE e(e);
    INSERT INTO e VALUES('v1'), ('v2');
  
SELECT group_concat(e, (SELECT s FROM s WHERE i=1)) FROM e 
SELECT group_concat(e, (SELECT s FROM s WHERE i=2)) FROM e 
SELECT group_concat(e, ?) FROM e

