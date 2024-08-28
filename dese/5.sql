SELECT city, COUNT(*) AS public_school_count
FROM schools
WHERE type = 'Public School'
GROUP BY city
HAVING COUNT(*) <= 3
ORDER BY public_school_count DESC, city ASC;
