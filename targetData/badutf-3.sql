
SELECT length('%80') AS x

SELECT length('%61%62%63') AS x

SELECT length('%7f%80%81') AS x

SELECT length('%61%c0') AS x

SELECT length('%61%c0%80%80%80%80%80%80%80%80%80%80') AS x

SELECT length('%c0%80%80%80%80%80%80%80%80%80%80') AS x

SELECT length('%80%80%80%80%80%80%80%80%80%80') AS x

SELECT length('%80%80%80%80%80%f0%80%80%80%80') AS x

SELECT length('%80%80%80%80%80%f0%80%80%80%ff') AS x
