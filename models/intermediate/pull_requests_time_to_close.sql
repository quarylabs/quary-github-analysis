SELECT
    id,
    state,
    title,
    created_at,
    updated_at,
    closed_at,
    merged_at,
    repository,
    author,
    TIMESTAMP_DIFF(closed_at, created_at, HOUR) AS time_to_close_hours
FROM
    q.stg_pull_requests
WHERE
    closed_at IS NOT NULL
