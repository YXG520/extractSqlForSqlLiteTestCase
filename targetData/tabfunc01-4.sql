

  SELECT * FROM main.generate_series(1,4)



  SELECT * FROM temp.generate_series(1,4)



  ATTACH ':memory:' AS aux1;
  CREATE TABLE aux1.t1(a,b,c);
  SELECT * FROM aux1.generate_series(1,4)



  SELECT * FROM (generate_series(1,5,2)) AS x LIMIT 10;

