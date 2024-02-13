SELECT
    id,
    created_at,
    updated_at,
    status,
    conclusion,
    event,
    head_branch,
    JSON_VALUE(repository, '$.name') AS repository_name,
    JSON_VALUE(actor, '$.login') AS actor_login,
    workflow_id,
    JSON_VALUE(head_commit, '$.id') AS head_commit_id,
    JSON_VALUE(head_commit, '$.timestamp') AS head_commit_timestamp,
    
FROM
    q.raw_workflow_runs
