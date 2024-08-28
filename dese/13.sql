SELECT s.name AS school_name, d.name AS district_name, e.per_pupil_expenditure, g.graduated
FROM schools s
JOIN districts d ON s.district_id = d.id
JOIN expenditures e ON d.id = e.district_id
JOIN graduation_rates g ON s.id = g.school_id
WHERE e.per_pupil_expenditure > 10000  -- Just an example condition
ORDER BY e.per_pupil_expenditure DESC, g.graduated DESC;
