

    CREATE TABLE p1(a INTEGER PRIMARY KEY); INSERT INTO p1 VALUES(88),(89);
    CREATE TABLE p2(a INT PRIMARY KEY); INSERT INTO p2 VALUES(77),(78);
    CREATE TABLE p3(a TEXT PRIMARY KEY);
    INSERT INTO p3 VALUES(66),(67),('alpha'),('BRAVO');
    CREATE TABLE p4(a TEXT PRIMARY KEY COLLATE nocase);
    INSERT INTO p4 VALUES('alpha'),('BRAVO'),('55'),('Delta'),('ECHO');
    CREATE TABLE p5(a INTEGER PRIMARY KEY, b, c, UNIQUE(b,c));
    INSERT INTO p5 VALUES(1,'Alpha','abc'),(2,'beta','def');
    CREATE TABLE p6(a INTEGER PRIMARY KEY, b TEXT COLLATE nocase,
                    c TEXT COLLATE rtrim, UNIQUE(b,c));
    INSERT INTO p6 VALUES(1,'Alpha','abc '),(2,'bETA','def    ');

    CREATE TABLE c1(x INTEGER PRIMARY KEY references p1);
    CREATE TABLE c2(x INTEGER PRIMARY KEY references p2);
    CREATE TABLE c3(x INTEGER PRIMARY KEY references p3);
    CREATE TABLE c4(x INTEGER PRIMARY KEY references p4);
    CREATE TABLE c5(x INT references p1);
    CREATE TABLE c6(x INT references p2);
    CREATE TABLE c7(x INT references p3);
    CREATE TABLE c8(x INT references p4);
    CREATE TABLE c9(x TEXT UNIQUE references p1);
    CREATE TABLE c10(x TEXT UNIQUE references p2);
    CREATE TABLE c11(x TEXT UNIQUE references p3);
    CREATE TABLE c12(x TEXT UNIQUE references p4);
    CREATE TABLE c13(x TEXT COLLATE nocase references p3);
    CREATE TABLE c14(x TEXT COLLATE nocase references p4);
    CREATE TABLE c15(x, y, FOREIGN KEY(x,y) REFERENCES p5(b,c));
    CREATE TABLE c16(x, y, FOREIGN KEY(x,y) REFERENCES p5(c,b));
    CREATE TABLE c17(x, y, FOREIGN KEY(x,y) REFERENCES p6(b,c));
    CREATE TABLE c18(x, y, FOREIGN KEY(x,y) REFERENCES p6(c,b));
    CREATE TABLE c19(x TEXT COLLATE nocase, y TEXT COLLATE rtrim,
                     FOREIGN KEY(x,y) REFERENCES p5(b,c));
    CREATE TABLE c20(x TEXT COLLATE nocase, y TEXT COLLATE rtrim,
                     FOREIGN KEY(x,y) REFERENCES p5(c,b));
    CREATE TABLE c21(x TEXT COLLATE nocase, y TEXT COLLATE rtrim,
                     FOREIGN KEY(x,y) REFERENCES p6(b,c));
    CREATE TABLE c22(x TEXT COLLATE nocase, y TEXT COLLATE rtrim,
                     FOREIGN KEY(x,y) REFERENCES p6(c,b));

    PRAGMA foreign_key_check;
  


    INSERT INTO c1 VALUES(90),(87),(88);
    PRAGMA foreign_key_check;
  


    PRAGMA main.foreign_key_check;
  


    PRAGMA temp.foreign_key_check;
  


    PRAGMA foreign_key_check(c1);
  


    PRAGMA foreign_key_check(c2);
  


    PRAGMA main.foreign_key_check(c2);
  


    PRAGMA temp.foreign_key_check(c2);
  
