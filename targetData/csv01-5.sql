

  CREATE VIRTUAL TABLE t5_1 USING csv(filename='csv01.csv');
  SELECT name FROM temp.pragma_table_info('t5_1');



  SELECT *, '|' FROM t5_1;



  DROP TABLE t5_1;
  CREATE VIRTUAL TABLE t5_1 USING csv(filename='csv01.csv', header);
  SELECT name FROM temp.pragma_table_info('t5_1');



  SELECT *, '|' FROM t5_1;

