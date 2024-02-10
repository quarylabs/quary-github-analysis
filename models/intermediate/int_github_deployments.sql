with deployments as (
    select
        workflow_run_id,
        repository,
        created_at,
        updated_at,
        conclusion,
        status
    from q.stg_github_workflow_runs
    where status = 'completed'
    and conclusion = 'success'
)

select
    repository,
    created_at as deployment_date,
    count(*) as deployments_count
from deployments
group by repository, deployment_date