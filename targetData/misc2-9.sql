

      BEGIN;
      CREATE TABLE counts(n INTEGER PRIMARY KEY);
      INSERT INTO counts VALUES(0);
      INSERT INTO counts VALUES(1);
      INSERT INTO counts SELECT n+2 FROM counts;
      INSERT INTO counts SELECT n+4 FROM counts;
      INSERT INTO counts SELECT n+8 FROM counts;
      COMMIT;
  
      CREATE TEMP TABLE x AS
      SELECT dim1.n, dim2.n, dim3.n
      FROM counts AS dim1, counts AS dim2, counts AS dim3
      WHERE dim1.n<10 AND dim2.n<10 AND dim3.n<10;
  
      SELECT count(*) FROM x;
    


      DROP TABLE x;
      CREATE TEMP TABLE x AS
      SELECT dim1.n, dim2.n, dim3.n
      FROM counts AS dim1, counts AS dim2, counts AS dim3
      WHERE dim1.n>=6 AND dim2.n>=6 AND dim3.n>=6;
  
      SELECT count(*) FROM x;
    


      DROP TABLE x;
      CREATE TEMP TABLE x AS
      SELECT dim1.n, dim2.n, dim3.n, dim4.n
      FROM counts AS dim1, counts AS dim2, counts AS dim3, counts AS dim4
      WHERE dim1.n<5 AND dim2.n<5 AND dim3.n<5 AND dim4.n<5;
  
      SELECT count(*) FROM x;
    
