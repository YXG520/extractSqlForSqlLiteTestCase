

    CREATE TABLE t5(a PRIMARY KEY, b, c);
    CREATE TABLE t6(
      d REFERENCES t5,
      e REFERENCES t5(c)
    );
    PRAGMA foreign_key_list(t6);
  


    CREATE TABLE t7(d, e, f,
      FOREIGN KEY (d, e) REFERENCES t5(a, b)
    );
    PRAGMA foreign_key_list(t7);
  


    CREATE TABLE t8(d, e, f,
      FOREIGN KEY (d, e) REFERENCES t5 ON DELETE CASCADE ON UPDATE SET NULL
    );
    PRAGMA foreign_key_list(t8);
  


    CREATE TABLE t9(d, e, f,
      FOREIGN KEY (d, e) REFERENCES t5 ON DELETE CASCADE ON UPDATE SET DEFAULT
    );
    PRAGMA foreign_key_list(t9);
  

