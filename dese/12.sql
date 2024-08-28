WITH
    AvgExpenditure AS (
        SELECT AVG(per_pupil_expenditure) AS avg_expenditure
        FROM expenditures
    ),
    AvgExemplary AS (
        SELECT AVG(exemplary) AS avg_exemplary
        FROM staff_evaluations
    )
SELECT
    d.name,
    e.per_pupil_expenditure,
    se.exemplary
FROM
    districts AS d
JOIN
    expenditures AS e ON d.id = e.district_id
JOIN
    staff_evaluations AS se ON d.id = se.district_id
WHERE
    e.per_pupil_expenditure > (SELECT avg_expenditure FROM AvgExpenditure)
    AND se.exemplary > (SELECT avg_exemplary FROM AvgExemplary)
ORDER BY
    se.exemplary DESC,
    e.per_pupil_expenditure DESC;
