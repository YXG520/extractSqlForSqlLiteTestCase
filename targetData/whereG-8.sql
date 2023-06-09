

  DROP TABLE IF EXISTS t0;
  CREATE TABLE t0 (c0);
  INSERT INTO t0(c0) VALUES ('a');
  SELECT LIKELY(t0.rowid) <= '0' FROM t0;



  SELECT * FROM t0 WHERE LIKELY(t0.rowid) <= '0';



  SELECT (t0.rowid) <= '0' FROM t0;



  SELECT * FROM t0 WHERE (t0.rowid) <= '0';



  SELECT unlikely(t0.rowid) <= '0', likelihood(t0.rowid,0.5) <= '0' FROM t0;



  SELECT * FROM t0 WHERE unlikely(t0.rowid) <= '0';



  SELECT * FROM t0 WHERE likelihood(t0.rowid, 0.5) <= '0';



  SELECT unlikely(t0.rowid <= '0'),
         likely(t0.rowid <= '0'),
         likelihood(t0.rowid <= '0',0.5)
    FROM t0;



  SELECT * FROM t0 WHERE unlikely(t0.rowid <= '0');



  SELECT * FROM t0 WHERE likelihood(t0.rowid <= '0', 0.5);

