

    CREATE INDEX i1b ON t1(b);
    CREATE INDEX i1c ON t1(c);
    PRAGMA integrity_check;
  

SELECT a FROM t1 WHERE b='abcde     '

SELECT a FROM t1 WHERE c='abcde     '

SELECT a FROM t1 WHERE b='xyzzy'

SELECT a FROM t1 WHERE c='xyzzy'

SELECT a FROM t1 WHERE c='xyzzy '

SELECT a FROM t1 WHERE c='xyzzy  '

SELECT a FROM t1 WHERE c='xyzzy   '

SELECT a FROM t1 WHERE c='xyzzy    '

SELECT a FROM t1 WHERE c='xyzzy                                  '

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
