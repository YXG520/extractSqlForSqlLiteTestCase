

    REINDEX;
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
