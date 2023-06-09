
SELECT '$hstr'=CAST(x'$uval' AS text) AS x;

SELECT CAST('$hstr' AS blob)=x'$uval' AS x;

SELECT hex(CAST(x'$uval' AS text)) AS x;

SELECT hex(CAST(x'$uval' AS text)) AS x;
