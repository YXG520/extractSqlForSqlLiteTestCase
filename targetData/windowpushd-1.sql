

  CREATE TABLE t1(id INTEGER PRIMARY KEY, grp_id);
  CREATE INDEX i1 ON t1(grp_id);
  CREATE VIEW lll AS SELECT
    row_number() OVER (PARTITION BY grp_id), 
    grp_id, id 
  FROM t1



  INSERT INTO t1 VALUES
    (1, 2), (2, 3), (3, 3), (4, 1), (5, 1),
    (6, 1), (7, 1), (8, 1), (9, 3), (10, 3), 
    (11, 2), (12, 3), (13, 3), (14, 2), (15, 1),
    (16, 2), (17, 1), (18, 2), (19, 3), (20, 2)



  SELECT * FROM lll



  SELECT * FROM lll WHERE grp_id=2


S
