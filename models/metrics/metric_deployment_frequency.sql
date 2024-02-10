with daily_deployment_frequency AS (
    select
        repository,
        DATE(deployment_date) AS deployment_date,
        COUNT(*) AS daily_deployments
    from
        q.int_github_deployments
    group by
        repository,
        DATE(deployment_date)
)

SELECT 
    repository,
    deployment_date,
    daily_deployments
FROM
    daily_deployment_frequency
ORDER BY
    repository,
    deployment_date