SELECT
    _airbyte_extracted_at AS _airbyte_extracted_at,
    _airbyte_meta AS _airbyte_meta,
    _airbyte_raw_id AS _airbyte_raw_id,
    author AS author,
    branch AS branch,
    comments_url AS comments_url,
    commit AS commit,
    committer AS committer,
    created_at AS created_at,
    html_url AS html_url,
    node_id AS node_id,
    parents AS parents,
    repository AS repository,
    sha AS sha,
    url AS url
FROM q.raw_commits