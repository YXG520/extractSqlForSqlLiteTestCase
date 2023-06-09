
SELECT 'abc' REGEXP '\W'
0

SELECT 'a c' REGEXP '\W'
1

SELECT '   ' REGEXP '\W'
1

SELECT 'abc' REGEXP '\w'
1

SELECT 'a c' REGEXP '\w'
1

SELECT '   ' REGEXP '\w'
0

SELECT 'abc' REGEXP '\D'
1
