

  CREATE VIRTUAL TABLE z1 USING fts3;
  INSERT INTO z1 VALUES('one two three'),('four one five'),('six two five');
  CREATE TRIGGER z1r1 AFTER DELETE ON z1_content BEGIN
    DELETE FROM z1;
  END;



  DELETE FROM z1;

