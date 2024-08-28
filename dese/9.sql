SELECT d.name
FROM districts d
JOIN expenditures e ON d.id = e.district_id
GROUP BY d.name
ORDER BY SUM(e.pupils) ASC
LIMIT 1;
