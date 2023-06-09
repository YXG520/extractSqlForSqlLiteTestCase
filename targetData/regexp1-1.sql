

    CREATE TABLE t1(x INTEGER PRIMARY KEY, y TEXT);
    INSERT INTO t1 VALUES(1, 'For since by man came death,');
    INSERT INTO t1 VALUES(2, 'by man came also the resurrection of the dead.');
    INSERT INTO t1 VALUES(3, 'For as in Adam all die,');
    INSERT INTO t1 VALUES(4, 'even so in Christ shall all be made alive.');

    SELECT x FROM t1 WHERE y REGEXP '^For ' ORDER BY x;
  


  SELECT regexpi('abc','ABC');



  SELECT regexpi('ABC','ABC');



  SELECT regexpi('ABC','abc');



  SELECT regexpi('ABC.','ABC');



  SELECT x FROM t1 WHERE y REGEXP 'by|in' ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP 'by|Christ' ORDER BY x;



  SELECT x FROM t1 WHERE regexp('by|christ',y) ORDER BY x;



  SELECT x FROM t1 WHERE regexpi('by|christ',y) ORDER BY x;



  SELECT x FROM t1 WHERE regexpi('BY|CHRIST',y) ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP 'shal+ al+' ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP 'shall x*y*z*all' ORDER BY x;



  SELECT x FROM t1 WHERE regexp('shall x*y*z*all',y) ORDER BY x;



  SELECT x FROM t1 WHERE regexp('SHALL x*y*z*all',y) ORDER BY x;



  SELECT x FROM t1 WHERE regexpi('SHALL x*y*z*all',y) ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP 'shallx?y? ?z?all' ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP 'r{2


  SELECT x FROM t1 WHERE y REGEXP 'r{3


  SELECT x FROM t1 WHERE y REGEXP 'r{1


  SELECT x FROM t1 WHERE y REGEXP 'ur{2,10


  SELECT x FROM t1 WHERE y REGEXP '[Aa]dam' ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP '[^Aa]dam' ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP '[^b-zB-Z]dam' ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP 'alive' ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP '^alive' ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP 'alive$' ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP 'alive.$' ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP 'alive\.$' ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP 'ma[nd]' ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP '\bma[nd]' ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP 'ma[nd]\b' ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP 'ma\w' ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP 'ma\W' ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP '\sma\w' ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP '\Sma\w' ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP 'alive\S$' ORDER BY x;



  SELECT x FROM t1 WHERE y REGEXP
          '\b(unto|us|son|given|his|name|called|' ||
          'wonderful|councelor|mighty|god|everlasting|father|' ||
          'prince|peace|alive)\b';

