
SELECT * FROM tablet8 LIMIT 1

} {
        db eval {CREATE TABLE t9(a, b, c)

SELECT * FROM tablet8 LIMIT 1

} {
        db eval {DROP TABLE t9;


      ATTACH 'test2.db' as aux;
    
SELECT * FROM tablet8 LIMIT 1

} {
      db eval {CREATE TABLE aux.t1(a, b, c)

SELECT * FROM tablet8 LIMIT 1

} {
          db eval {DROP TABLE aux.t1;
