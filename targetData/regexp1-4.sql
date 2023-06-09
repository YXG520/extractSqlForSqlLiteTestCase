
SELECT 'xab' REGEXP 'a(b$|cd)';
1

SELECT 'xab' REGEXP '(b$|cd)';
1

SELECT 'xaby' REGEXP 'a(b$|cd)';
0

SELECT 'xacd' REGEXP 'a(b$|cd)';
1

SELECT 'xacdy' REGEXP 'a(b$|cd)';
1

SELECT 'xab' REGEXP 'a(cd|b$)';
1

SELECT 'xaby' REGEXP 'a(cd|b$)';
0

SELECT 'xacd' REGEXP 'a(cd|b$)';
1

SELECT 'xacdy' REGEXP 'a(cd|b$)';
1

SELECT 'xab' REGEXP 'a(cd|b$|e)';
1

SELECT 'xaby' REGEXP 'a(cd|b$|e)';
0

SELECT 'xacd' REGEXP 'a(cd|b$|e)';
1

SELECT 'xacdy' REGEXP 'a(cd|b$|e)';
1
