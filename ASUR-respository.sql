--11.02.2021
DESC asur.tab_asset

-- 10.02.2021
SELECT
    owner,
    COUNT(*)
FROM
    all_objects
GROUP BY
    owner
ORDER BY
    2 DESC;

-- количество объектов учёта
select count(*) from asur.tab_asset;

-- Объекты Отделения Барнаул
select count(*) from asur.tab_asset


-- where 

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