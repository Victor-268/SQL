WITH least_expensive_per_hit AS (
    SELECT players.id, players.first_name, players.last_name
    FROM players
    JOIN salaries ON players.id = salaries.player_id
    JOIN performances ON players.id = performances.player_id AND salaries.year = performances.year
    WHERE salaries.year = 2001 AND H > 0
    ORDER BY (salary / H) ASC
    LIMIT 10
),
least_expensive_per_rbi AS (
    SELECT players.id, players.first_name, players.last_name
    FROM players
    JOIN salaries ON players.id = salaries.player_id
    JOIN performances ON players.id = performances.player_id AND salaries.year = performances.year
    WHERE salaries.year = 2001 AND RBI > 0
    ORDER BY (salary / RBI) ASC
    LIMIT 10
)
SELECT DISTINCT least_expensive_per_hit.first_name, least_expensive_per_hit.last_name
FROM least_expensive_per_hit
JOIN least_expensive_per_rbi ON least_expensive_per_hit.id = least_expensive_per_rbi.id
ORDER BY least_expensive_per_hit.id ASC;
