

  execsql {
    PRAGMA max_page_count = 1000;
  


  execsql { CREATE TABLE trig (a INTEGER, b INTEGER); 

    CREATE TRIGGER update_b BEFORE UPDATE ON trig
      FOR EACH ROW BEGIN
        INSERT INTO trig VALUES (65, 'update_b');
      END;

    CREATE TRIGGER update_a AFTER UPDATE ON trig
      FOR EACH ROW BEGIN
        INSERT INTO trig VALUES (65, 'update_a');
      END;

    CREATE TRIGGER insert_b BEFORE INSERT ON trig
      FOR EACH ROW BEGIN
        UPDATE trig SET a = 1;
      END;

    CREATE TRIGGER insert_a AFTER INSERT ON trig
      FOR EACH ROW BEGIN
        UPDATE trig SET a = 1;
      END;
  


  execsql {
    INSERT INTO trig VALUES (1,1); 
  


  execsql {
    SELECT COUNT(*) FROM trig;
  


  catchsql {
    INSERT INTO trig VALUES (1,10);
  


  catchsql {
    SELECT COUNT(*) FROM trig;
  
PRAGMA auto_vacuum

   set fsize 1700



  execsql {
    PRAGMA max_page_count = 1000000;
    CREATE TABLE abc(a, b, c);
    INSERT INTO abc VALUES(1, 2, 3);
    INSERT INTO abc SELECT a||b||c, b||c||a, c||a||b FROM abc;
    INSERT INTO abc SELECT a||b||c, b||c||a, c||a||b FROM abc;
    INSERT INTO abc SELECT a||b||c, b||c||a, c||a||b FROM abc;
    INSERT INTO abc SELECT a||b||c, b||c||a, c||a||b FROM abc;
    INSERT INTO abc SELECT a||b||c, b||c||a, c||a||b FROM abc;
    INSERT INTO abc SELECT a||b||c, b||c||a, c||a||b FROM abc;
    INSERT INTO abc SELECT a||b||c, b||c||a, c||a||b FROM abc;
    INSERT INTO abc SELECT a||b||c, b||c||a, c||a||b FROM abc;
    INSERT INTO abc SELECT a, b, c FROM abc;
    INSERT INTO abc SELECT b, a, c FROM abc;
    INSERT INTO abc SELECT c, b, a FROM abc;
  


  db close
  sqlite3 db test.db
  execsql {
    PRAGMA max_page_count = 1000;
  

    SELECT count(*) FROM sqlite_master;
  


  execsql {
    PRAGMA max_page_count;
  


  execsql {
    DROP TABLE abc;
  
