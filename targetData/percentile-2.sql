

      CREATE VIRTUAL TABLE nums USING wholenumber;
      CREATE TABLE t3(x);
      INSERT INTO t3 SELECT value-1 FROM nums WHERE value BETWEEN 1 AND 500000;
      INSERT INTO t3 SELECT value*10 FROM nums
                      WHERE value BETWEEN 500000 AND 999999;
      SELECT count(*) FROM t3;
    


        SELECT round(percentile(x, $in),1) from t3;
      
