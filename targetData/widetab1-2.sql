

  CREATE TABLE t1(
    c00,c01,c02,c03,c04,c05,c06,c07,c08,c09,
    c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,
    c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,
    c30,c31,c32,c33,c34,c35,c36,c37,c38,c39,
    c40,c41,c42,c43,c44,c45,c46,c47,c48,c49,
    c50,c51,c52,c53,c54,c55,c56,c57,c58,c59,
    c60,c61,c62,c63,c64,c65,c66,c67,c68,c69,
    c70,c71,c72,c73,c74,c75,c76,c77,c78,c79,
    c80,c81,c82,c83,c84,c85,c86,c87,c88,c89,
    c90,c91,c92,c93,c94,c95,c96,c97,c98,c99,
    a,b,c,d,e
  );
  CREATE INDEX t1x1 on t1(c00,a,b,
        c01,c02,c03,c04,c05,c06,c07,c08,c09,
    c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,
    c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,
    c30,c31,c32,c33,c34,c35,c36,c37,c38,c39,
    c40,c41,c42,c43,c44,c45,c46,c47,c48,c49,
    c50,c51,c52,c53,c54,c55,c56,c57,c58,c59,
    c60,c61,c62,c63,c64,c65,c66,c67,c68,c69,
    c70,c71,c72,c73,c74,c75,c76,c77,c78,c79,
    c80,c81,c82,c83,c84,c85,c86,c87,c88,c89,
    c90,c91,c92,c93,c94,c00,c96,c97,c98,c99
  );
  CREATE INDEX t1cd ON t1(c,d);
  CREATE INDEX t1x2 ON t1(c01,c02,c03,a,b);
  WITH RECURSIVE c(x) AS (VALUES(0) UNION ALL SELECT x+1000 FROM c WHERE x<9000)
  INSERT INTO t1 SELECT
    x+00, x+01, x+02, x+03, x+04, x+05, x+06, x+07, x+08, x+09,
    x+10, x+11, x+12, x+13, x+14, x+15, x+16, x+17, x+18, x+19,
    x+20, x+21, x+22, x+23, x+24, x+25, x+26, x+27, x+28, x+29,
    x+30, x+31, x+32, x+33, x+34, x+35, x+36, x+37, x+38, x+39,
    x+40, x+41, x+42, x+43, x+44, x+45, x+46, x+47, x+48, x+49,
    x+50, x+51, x+52, x+53, x+54, x+55, x+56, x+57, x+58, x+59,
    x+60, x+61, x+62, x+63, x+64, x+65, x+66, x+67, x+68, x+69,
    x+70, x+71, x+72, x+73, x+74, x+75, x+76, x+77, x+78, x+79,
    x+80, x+81, x+82, x+83, x+84, x+85, x+86, x+87, x+88, x+89,
    x+90, x+91, x+92, x+93, x+94, x+95, x+96, x+97, x+98, x+99,
    x+100, x+101, x+102, x+103, x+104 FROM c;


SELECT sum(c62) FROM t1;

SELECT sum(c63) FROM t1;

SELECT sum(c64) FROM t1;

SELECT sum(c65) FROM t1;
