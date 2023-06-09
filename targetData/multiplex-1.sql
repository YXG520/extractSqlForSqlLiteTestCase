
SQLITE_ERROR


SQLITE_OK


SQLITE_MISUSE

SQLITE_OK


SQLITE_OK

SQLITE_OK


SQLITE_OK

SQLITE_OK


SQLITE_OK









SQLITE_OK


SQLITE_OK



 SELECT multiplex_control(2, 32768); 
0

 SELECT multiplex_control(3, -1); 
0

 SELECT multiplex_control(2, 31); 
0

 SELECT multiplex_control(3, 100); 
0

 SELECT multiplex_control(2, 1073741824); 
0


SQLITE_OK


SQLITE_OK



SQLITE_OK

SQLITE_OK

SQLITE_OK


SQLITE_OK


SQLITE_OK



 SELECT multiplex_control(1, 0); 
0

 SELECT multiplex_control(1, 1); 
0

 SELECT multiplex_control(1, -1); 
0


SQLITE_OK


SQLITE_OK



 SELECT multiplex_control(-1, 0); 
1

 SELECT multiplex_control(4, 1); 
1


SQLITE_OK
