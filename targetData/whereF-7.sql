

  DROP TABLE IF EXISTS cd;
  CREATE TABLE cd ( cdid INTEGER PRIMARY KEY NOT NULL, genreid integer );
  CREATE INDEX cd_idx_genreid ON cd (genreid);
  INSERT INTO cd  ( cdid, genreid ) VALUES
                     ( 1,    1 ),
                     ( 2, NULL ),
                     ( 3, NULL ),
                     ( 4, NULL ),
                     ( 5, NULL );
  
  SELECT cdid
    FROM cd me
  WHERE 2 > (
    SELECT COUNT( * )
      FROM cd rownum__emulation
    WHERE
      (
        me.genreid IS NOT NULL
          AND
        rownum__emulation.genreid IS NULL
      )
        OR
      (
        me.genreid IS NOT NULL
          AND
        rownum__emulation.genreid IS NOT NULL
          AND
        rownum__emulation.genreid < me.genreid
      )
        OR
      (
        ( me.genreid = rownum__emulation.genreid OR ( me.genreid IS NULL
  AND rownum__emulation.genreid IS NULL ) )
          AND
        rownum__emulation.cdid > me.cdid
      )
  );



  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  INSERT INTO t1(a,b) VALUES(1,1);
  CREATE TABLE t2(aa INTEGER PRIMARY KEY, bb);
  INSERT INTO t2(aa,bb) VALUES(1,1),(2,NULL),(3,NULL);
  SELECT (
    SELECT COUNT(*) FROM t2
     WHERE ( t1.b IS NOT NULL AND t2.bb IS NULL )
        OR ( t2.bb < t1.b )
        OR ( t1.b IS t2.bb AND t2.aa > t1.a )
    )
    FROM t1;



  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT);
  INSERT INTO t1(a,b) VALUES(1,'abcxyz');
  CREATE TABLE t2(aa INTEGER PRIMARY KEY, bb TEXT);
  INSERT INTO t2(aa,bb) VALUES(1,'abc'),(2,'wxyz'),(3,'xyz');
  CREATE INDEX t2bb ON t2(bb);
  EXPLAIN SELECT (
    SELECT COUNT(*) FROM t2
     WHERE ( t1.b GLOB 'a*z' AND t2.bb='xyz' )
        OR ( t2.bb = t1.b )
        OR ( t2.aa = t1.a )
    )
    FROM t1;

