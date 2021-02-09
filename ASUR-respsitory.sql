SELECT
    owner,
    COUNT(*)
FROM
    all_tables
WHERE
    tablespace_name = 'USERS'
GROUP BY
    owner
-- order by owner,table_name