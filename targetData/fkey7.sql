PRAGMA foreign_keys = 1;

  CREATE TABLE s1(a PRIMARY KEY, b);
  CREATE TABLE par(a, b REFERENCES s1, c UNIQUE, PRIMARY KEY(a));

  CREATE TABLE c1(a, b REFERENCES par);
  CREATE TABLE c2(a, b REFERENCES par);
  CREATE TABLE c3(a, b REFERENCES par(c));

set ::tbls($tbl) 1 
array unset ::tbls
  uplevel [list execsql $sql]
  uplevel [list do_test $tn {lsort [array names ::tbls]
CREATE TABLE pX(x PRIMARY KEY);
    CREATE TABLE cX(a INTEGER PRIMARY KEY, b REFERENCES pX);
  
INSERT INTO cX VALUES(11, zeroblob(40));
  
CREATE TABLE p4 (id INTEGER NOT NULL PRIMARY KEY);
    INSERT INTO p4 VALUES(1), (2), (3);

    CREATE TABLE c4(x INTEGER REFERENCES p4(id) DEFERRABLE INITIALLY DEFERRED);
    CREATE INDEX c4_x ON c4(x);
    INSERT INTO c4 VALUES(1), (2), (3);

    ANALYZE;
    INSERT INTO p4(id) VALUES(4);
  
PRAGMA foreign_keys = true;
  CREATE TABLE parent(
    p PRIMARY KEY
  );
  CREATE TABLE child(
    c UNIQUE REFERENCES parent(p)
  );

INSERT OR FAIL INTO child VALUES(123), (123);

SELECT * FROM child;

PRAGMA foreign_key_check;

INSERT INTO parent VALUES(123);
  INSERT OR FAIL INTO child VALUES(123), (123);

SELECT * FROM child;

PRAGMA foreign_key_check;

