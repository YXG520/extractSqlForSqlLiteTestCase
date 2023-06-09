

  ATTACH printf('file:%09000x/x.db?mode=memory&cache=shared',1) AS aux1;
  CREATE TABLE aux1.t1(x,y);
  INSERT INTO aux1.t1(x,y) VALUES(1,2),(3,4);
  SELECT * FROM aux1.t1;

