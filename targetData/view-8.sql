

    CREATE VIEW v6 AS SELECT pqr, xyz FROM v1;
    SELECT * FROM v6 ORDER BY xyz;
  


    SELECT * FROM v6 ORDER BY xyz;
  


    CREATE VIEW v7(a) AS SELECT pqr+xyz FROM v6;
    SELECT * FROM v7 ORDER BY a;
  


      CREATE VIEW v8 AS SELECT max(cnt) AS mx FROM
        (SELECT a%2 AS eo, count(*) AS cnt FROM t1 GROUP BY eo);
      SELECT * FROM v8;
    


      SELECT mx+10, mx*2 FROM v8;
    


      SELECT mx+10, pqr FROM v6, v8 WHERE xyz=2;
    


      SELECT mx+10, pqr FROM v6, v8 WHERE xyz>2;
    
