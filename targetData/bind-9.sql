

    CREATE TABLE t2(a,b,c,d,e,f);
  

      INSERT INTO t2(a) VALUES(?0)
    

INSERT INTO t2(a) VALUES(?[expr $iMaxVar+1])


      INSERT INTO t2(a,b) VALUES(?1,?$iMaxVar)
    


      INSERT INTO t2(a,b) VALUES(?2,?[expr $iMaxVar - 1])
    


      INSERT INTO t2(a,b,c,d) VALUES(?1,?[expr $iMaxVar - 2],?,?)
    



SELECT * FROM t2
