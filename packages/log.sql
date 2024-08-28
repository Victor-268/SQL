
-- *** The Lost Letter ***
SELECT id, contents, to_address_id
FROM PACKAGES
WHERE contents = 'Congratulatory letter'
AND from_address_id=
(SELECT id
FROM addresses
WHERE address LIKE '900 Somerville Avenue')
;


SELECT address, type
FROM addresses
WHERE id = 854;

-- *** The Devious Delivery ***
SELECT addresses.address, addresses.type
FROM addresses
JOIN packages ON addresses.id = packages.to_address_id
WHERE packages.contents = 'Rubber duck';


SELECT id, to_address_id, contents
    FROM packages
    WHERE contents = 'Rubber duck';


SELECT scans.timestamp, scans.action, addresses.address, addresses.type
FROM scans
JOIN addresses ON scans.address_id = addresses.id
WHERE scans.package_id = (
    SELECT id
    FROM packages
    WHERE contents LIKE '%Duck debugger%'
)
ORDER BY scans.timestamp;


-- *** The Forgotten Gift ***
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

