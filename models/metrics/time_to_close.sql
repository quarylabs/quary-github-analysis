SELECT
    repository,
    FORMAT_TIMESTAMP('%Y-%U', created_at) AS year_week,
    ROUND(AVG(time_to_close_hours)) AS avg_time_to_close,
    ROUND(MIN(time_to_close_hours)) AS min_time_to_close, 
    ROUND(MAX(time_to_close_hours)) AS max_time_to_close, 
    COUNT(id) AS total_prs_closed
FROM
    q.pull_requests_time_to_close
GROUP BY
    repository, year_week
ORDER BY
    repository, year_week
