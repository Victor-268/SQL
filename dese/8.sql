SELECT d.name, SUM(e.pupils) AS total_pupils
FROM districts d
JOIN expenditures e ON d.id = e.district_id
GROUP BY d.name;
