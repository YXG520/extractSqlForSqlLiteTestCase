
SELECT 'foo' REGEXP '[a-z]';
1

SELECT 'foo' REGEXP '^[a-z]+$';
1

SELECT 'foo' REGEXP '^([a-z]+)$';
1

SELECT 'foo' REGEXP '(^[a-z]+)$';
1

SELECT 'foo' REGEXP '(^[a-z]+$)';
1

SELECT 'abc' REGEXP '(^abc|def)';
1

SELECT 'xabc' REGEXP '(^abc|def)';
0

SELECT 'def' REGEXP '(^abc|def)';
1

SELECT 'xdef' REGEXP '(^abc|def)';
1
