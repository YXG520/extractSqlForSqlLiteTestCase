

  SELECT 'aaaabbbbcccc' REGEXP 'ab*c', 
         'aaaacccc' REGEXP 'ab*c';



  SELECT 'aaaabbbbcccc' REGEXP 'ab+c',
         'aaaacccc' REGEXP 'ab+c';



  SELECT 'aaaabbbbcccc' REGEXP 'ab?c',
         'aaaacccc' REGEXP 'ab?c';



  SELECT 'aaaabbbbbbcccc' REGEXP 'ab{3,5


  SELECT 'aaaabbbbcccc' REGEXP 'a(a|b|c)+c',
         'aaaabbbbcccc' REGEXP '^a(a|b|c){11


  SELECT 'aaaabbbbcccc' REGEXP '^a(a|bb|c)+c$',
         'aaaabbbbcccc' REGEXP '^a(a|bbb|c)+c$',
         'aaaabbbbcccc' REGEXP '^a(a|bbbb|c)+c$'



  SELECT 'aaaabbbbcccc' REGEXP '^a([ac]+|bb){3


  SELECT 'abc*def+ghi.jkl[mno]pqr' REGEXP 'c.d',
         'abc*def+ghi.jkl[mno]pqr' REGEXP 'c\*d',
         'abc*def+ghi.jkl[mno]pqr' REGEXP 'f\+g',
         'abc*def+ghi.jkl[mno]pqr' REGEXP 'i\.j',
         'abc*def+ghi.jkl[mno]pqr' REGEXP 'l\[mno\]p'


SELECT $v1 REGEXP '^abc\ndef$'

SELECT $v1 REGEXP '^abc\adef$'

SELECT $v1 REGEXP '^abc\tdef$'

SELECT $v1 REGEXP '^abc\rdef$'

SELECT $v1 REGEXP '^abc\fdef$'

SELECT $v1 REGEXP '^abc\vdef$'


  SELECT 'abc\def' REGEXP '^abc\\def',
         'abc(def' REGEXP '^abc\(def',
         'abc)def' REGEXP '^abc\)def',
         'abc*def' REGEXP '^abc\*def',
         'abc.def' REGEXP '^abc\.def',
         'abc+def' REGEXP '^abc\+def',
         'abc?def' REGEXP '^abc\?def',
         'abc[def' REGEXP '^abc\[def',
         'abc$def' REGEXP '^abc\$',
         '^def'    REGEXP '\^def',
         'abc{4


  SELECT 'abc$¢€xyz' REGEXP '^abc\u0024\u00a2\u20acxyz$',
         'abc$¢€xyz' REGEXP '^abc\u0024\u00A2\u20ACxyz$',
         'abc$¢€xyz' REGEXP '^abc\x24\xa2\u20acxyz$'



  SELECT 'abc$¢€xyz' REGEXP '^abc[\u0024][\u00a2][\u20ac]xyz$',
         'abc$¢€xyz' REGEXP '^abc[\u0024\u00A2\u20AC]{3


  SELECT 'abc$¢€xyz' REGEXP '^abc[^\u0025-X][^ -\u007f][^\u20ab]xyz$'

