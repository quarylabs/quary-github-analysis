with workflow_runs as (
    select
        id as workflow_run_id,
        repository,
        created_at,
        updated_at,
        conclusion,
        status,
        event,
        head_branch
    FROM q.raw_workflow_runs
    where event = 'push'
)

select   
    workflow_run_id,
    JSON_EXTRACT_SCALAR(repository, '$.name') AS repository,
    created_at,
    updated_at,
    conclusion,
    status,
    event,
    head_branch 
    FROM workflow_runs