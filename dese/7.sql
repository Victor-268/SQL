SELECT s.name
FROM schools s
JOIN districts d on s.district_id = d.id
WHERE d.name = 'Cambridge';
