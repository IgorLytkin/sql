-- 10.02.2021

-- количество объектов по владельцам, в порядке убывания
SELECT
    owner,
    COUNT(*)
FROM
    all_objects
GROUP BY
    owner
ORDER BY
    2 DESC;

-- 09.02.2021 
SELECT
    *
FROM
    all_tables
WHERE
    owner = 'ASUR'
ORDER BY
    table_name;
    
select * from tab_asset;

SELECT DISTINCT
    dchnumber,
    COUNT(*)
FROM
    tab_asset
GROUP BY
    dchnumber
ORDER BY
    2 DESC

SELECT
    *
FROM
    tab_asset a
WHERE
    a.fullname LIKE 'LIV: %'

-- 08.02.2021 Количество таблиц по владельцам
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