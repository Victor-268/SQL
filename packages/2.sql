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
