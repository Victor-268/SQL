SELECT s.name
FROM schools s
JOIN graduation_rates g ON s.ID = g.school_id
WHERE g.graduated = 100;
