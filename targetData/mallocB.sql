SELECT - 456
SELECT - 456.1
SELECT random()
SELECT length(zeroblob(1000))
SELECT * FROM (SELECT 1) GROUP BY 1;
SELECT test_auxdata('hello world'); 
SELECT strftime(hex(randomblob(50)) || '%Y', 'now')

