SELECT hex('%80') AS x
SELECT hex('%81') AS x
SELECT hex('%bf') AS x
SELECT hex('%c0') AS x
SELECT hex('%e0') AS x
SELECT hex('%f0') AS x
SELECT hex('%ff') AS x

SELECT hex('%80') AS x
SELECT hex('%81') AS x
SELECT hex('%bf') AS x
SELECT hex('%c0') AS x
SELECT hex('%c1') AS x
SELECT hex('%c0%bf') AS x
SELECT hex('%c1%bf') AS x
SELECT hex('%c3%bf') AS x
SELECT hex('%e0') AS x
SELECT hex('%f0') AS x
SELECT hex('%ff') AS x
SELECT '%80'=CAST(x'80' AS text) AS x
SELECT CAST('%80' AS blob)=x'80' AS x
SELECT length('%80') AS x
SELECT length('%61%62%63') AS x
SELECT length('%7f%80%81') AS x
SELECT length('%61%c0') AS x
SELECT length('%61%c0%80%80%80%80%80%80%80%80%80%80') AS x
SELECT length('%c0%80%80%80%80%80%80%80%80%80%80') AS x
SELECT length('%80%80%80%80%80%80%80%80%80%80') AS x
SELECT length('%80%80%80%80%80%f0%80%80%80%80') AS x
SELECT length('%80%80%80%80%80%f0%80%80%80%ff') AS x
SELECT hex(trim('%80%80%80%f0%80%80%80%ff','%80%ff')) AS x
SELECT hex(ltrim('%80%80%80%f0%80%80%80%ff','%80%ff')) AS x
SELECT hex(rtrim('%80%80%80%f0%80%80%80%ff','%80%ff')) AS x
SELECT hex(trim('%80%80%80%f0%80%80%80%ff','%ff%80')) AS x
SELECT hex(trim('%ff%80%80%f0%80%80%80%ff','%ff%80')) AS x
SELECT hex(trim('%ff%80%f0%80%80%80%ff','%ff%80')) AS x
SELECT hex(trim('%ff%80%f0%80%80%80%ff','%ff%80%80')) AS x
