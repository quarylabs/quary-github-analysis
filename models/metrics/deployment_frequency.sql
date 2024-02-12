WITH deployment_counts AS (
  SELECT
    updated_at AS deployment_date,
    repository_name,
    COUNT(*) AS deployments
  FROM
      q.stg_workflow_runs
  WHERE
    conclusion = 'success'
    AND head_branch = 'main'
  GROUP BY
    deployment_date, repository_name
)

SELECT
  deployment_date,
  repository_name,
  deployments
FROM
  deployment_counts
ORDER BY
  deployment_date DESC, repository_name;