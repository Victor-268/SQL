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
