SELECT hex( unhex( $hex ) );
  
SELECT hex( unhex( lower( $hex ) ) );
  
SELECT typeof( unhex('') ), length( unhex('') );

SELECT unhex( $hex ) IS NULL;
  
SELECT unhex();

SELECT unhex('ABCD', '1234', '');

SELECT hex( unhex($hex, ' -') );
  
SELECT typeof( unhex(' ', ' -') ), length( unhex('-', ' -') );

null
null
null
