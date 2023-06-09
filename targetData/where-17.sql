

    CREATE TABLE tbooking (
      id INTEGER PRIMARY KEY,
      eventtype INTEGER NOT NULL
    );
    INSERT INTO tbooking VALUES(42, 3);
    INSERT INTO tbooking VALUES(43, 4);
  


    SELECT a.id
    FROM tbooking AS a
    WHERE a.eventtype=3;
  


    SELECT a.id, (SELECT b.id FROM tbooking AS b WHERE b.id>a.id)
    FROM tbooking AS a
    WHERE a.eventtype=3;
  


    SELECT a.id, (SELECT b.id FROM tbooking AS b WHERE b.id>a.id)
    FROM (SELECT 1.5 AS id) AS a
  


    CREATE TABLE tother(a, b);
    INSERT INTO tother VALUES(1, 3.7);
    SELECT id, a FROM tbooking, tother WHERE id>a;
  
