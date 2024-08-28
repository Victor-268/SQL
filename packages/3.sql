SELECT id, contents, to_address_id
FROM PACKAGES
WHERE from_address_id=
(SELECT id
FROM addresses
WHERE address LIKE '109 Tileston Street')
;


select id, address
FROM addresses
WHERE id = 4983;

SELECT driver_id, action, timestamp
FROM scans
WHERE package_id = 9523;

SELECT name
FROM drivers
WHERE id = 17;
