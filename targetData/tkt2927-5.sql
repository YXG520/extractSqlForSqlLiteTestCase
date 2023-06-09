

    SELECT a, b FROM t1
    EXCEPT
    SELECT a, b FROM t1
  


    SELECT a, b FROM t1
    EXCEPT
    SELECT a, abs(b) FROM t1
  


    SELECT a, b FROM t1
    EXCEPT
    SELECT abs(a), b FROM t1
  


    SELECT a, b FROM t1
    EXCEPT
    SELECT abs(a), abs(b) FROM t1
  


    SELECT a, abs(b) FROM t1
    EXCEPT
    SELECT a, b FROM t1
  


    SELECT a, abs(b) FROM t1
    EXCEPT
    SELECT a, abs(b) FROM t1
  


    SELECT a, abs(b) FROM t1
    EXCEPT
    SELECT abs(a), b FROM t1
  


    SELECT a, abs(b) FROM t1
    EXCEPT
    SELECT abs(a), abs(b) FROM t1
  


    SELECT abs(a), b FROM t1
    EXCEPT
    SELECT a, b FROM t1
  


    SELECT abs(a), b FROM t1
    EXCEPT
    SELECT a, abs(b) FROM t1
  


    SELECT abs(a), b FROM t1
    EXCEPT
    SELECT abs(a), b FROM t1
  


    SELECT abs(a), b FROM t1
    EXCEPT
    SELECT abs(a), abs(b) FROM t1
  


    SELECT abs(a), abs(b) FROM t1
    EXCEPT
    SELECT a, b FROM t1
  


    SELECT abs(a), abs(b) FROM t1
    EXCEPT
    SELECT a, abs(b) FROM t1
  


    SELECT abs(a), abs(b) FROM t1
    EXCEPT
    SELECT abs(a), b FROM t1
  


    SELECT abs(a), abs(b) FROM t1
    EXCEPT
    SELECT abs(a), abs(b) FROM t1
  
