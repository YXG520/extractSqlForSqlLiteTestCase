

    CREATE TABLE t1(
      a INTEGER PRIMARY KEY,
      b TEXT COLLATE BINARY,
      c TEXT COLLATE RTRIM
    );
    INSERT INTO t1 VALUES(1, 'abcde','abcde');
    INSERT INTO t1 VALUES(2, 'xyzzy ','xyzzy ');
    INSERT INTO t1 VALUES(3, 'xyzzy  ','xyzzy  ');
    INSERT INTO t1 VALUES(4, 'xyzzy   ','xyzzy   ');
    INSERT INTO t1 VALUES(5, '   ', '   ');
    INSERT INTO t1 VALUES(6, '', '');
    SELECT count(*) FROM t1;
  

SELECT a FROM t1 WHERE b='abcde     '

SELECT a FROM t1 WHERE c='abcde     '

SELECT a FROM t1 WHERE b='xyzzy'

SELECT a FROM t1 WHERE c='xyzzy'

SELECT a FROM t1 WHERE c='xyzzy '

SELECT a FROM t1 WHERE c='xyzzy  '

SELECT a FROM t1 WHERE c='xyzzy   '

SELECT a FROM t1 WHERE c='xyzzy    '

SELECT a FROM t1 WHERE c='xyzzy                                  '

SELECT 'abc123'='abc123                         ' COLLATE RTRIM;

SELECT 'abc123                         '='abc123' COLLATE RTRIM;

SELECT '  '='' COLLATE RTRIM, '  '='' COLLATE BINARY, '  '=''

SELECT ''='  ' COLLATE RTRIM, ''='  ' COLLATE BINARY, ''='  '

SELECT '  '='      ' COLLATE RTRIM, '  '='        '

SELECT ''<>'  ' COLLATE RTRIM, ''<>'  ' COLLATE BINARY, ''<>'  '

SELECT a FROM t1 WHERE c='xyzz'

SELECT a FROM t1 WHERE c='xyzzyy   '

SELECT a FROM t1 WHERE c='xyzz   '

SELECT a FROM t1 WHERE c='abcd   '

SELECT a FROM t1 WHERE c='abcd'

SELECT a FROM t1 WHERE c='abc'

SELECT a FROM t1 WHERE c='abcdef    '

SELECT a FROM t1 WHERE c=''

SELECT a FROM t1 WHERE c=' '

SELECT a FROM t1 WHERE c='                    '
