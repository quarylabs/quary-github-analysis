SELECT
    id,
    state,
    title,
    created_at,
    updated_at,
    closed_at,
    merged_at,
    repository,
    JSON_VALUE(user, '$.login') AS author,

FROM
    q.raw_pull_requests