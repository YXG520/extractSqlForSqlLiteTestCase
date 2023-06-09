
SELECT hex(trim('%80%80%80%f0%80%80%80%ff','%80%ff')) AS x

SELECT hex(ltrim('%80%80%80%f0%80%80%80%ff','%80%ff')) AS x

SELECT hex(rtrim('%80%80%80%f0%80%80%80%ff','%80%ff')) AS x

SELECT hex(trim('%80%80%80%f0%80%80%80%ff','%ff%80')) AS x

SELECT hex(trim('%ff%80%80%f0%80%80%80%ff','%ff%80')) AS x

SELECT hex(trim('%ff%80%f0%80%80%80%ff','%ff%80')) AS x

SELECT hex(trim('%ff%80%f0%80%80%80%ff','%ff%80%80')) AS x
