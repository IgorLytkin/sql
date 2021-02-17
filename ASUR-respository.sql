-- 17.02.2021
-- Поиск СЗИ  от НСД Secret Net Studio 8.4.2863.0
SELECT
    t2.name               AS ib_nsd_nsdtype_name,
    t1.nsdtypeid          AS ib_nsd_nsdtype,
    t3.value              AS ib_nsd_mode_value,
    t1.modeid             AS ib_nsd_mode,
    t1.automode_reason    AS ib_nsd_automode_reason,
    t1.id                 AS ib_nsd_id
FROM
    tab3_ib_nsd    t1,
    tab_cls        t2,
    list_ib_modes  t3
WHERE
        t1.nsdtypeid = t2.id (+)
    AND t1.modeid = t3.id (+)
    AND ( t1.assetid = 'OBD1025855' );

-- Поиск СВТ 
SELECT
    t1.fullname                  AS asset_fullname,
    t2.network_connection        AS asset_ib_networkconnect,
    t2.security_circuitid        AS asset_ib_circuitid,
    t2.networkname               AS asset_ib_networkname,
    t2.domain                    AS asset_ib_domain,
    t2.ipaddress                 AS asset_ib_ipaddress,
    t2.vvk                       AS asset_ib_vvk,
    t2.vvk_modeid                AS asset_ib_vvkmode,
    t2.vvk_automode_reason       AS asset_ib_vvk_automode_reason,
    t2.useports_requestnumber    AS asset_ib_useports_request,
    t2.askvt_version             AS asset_ib_askvt_version,
    t2.aib                       AS asset_ib_aib,
    t2.os_type                   AS asset_ib_os,
    t2.comments                  AS asset_ib_comments,
    t1.invnumber                 AS asset_invnumber,
    t3.depid                     AS asset_conddep,
    t3.respid                    AS asset_condresp,
    t3.condtypeid                AS asset_condtype
FROM
    tab_asset       t1,
    tab3_ib         t2,
    tab_conditions  t3
WHERE
        t1.assetid = t2.assetid (+)
    AND t1.condexplid = t3.condid (+)
    AND ( t1.assetid = 'OBD1025855' );

-- Поиск домена REGION
select name AS lookup
FROM
    tab_cls
WHERE
    id = 72001102;
    
-- Поиск СЗ от ВВК '(11.1.1.126) Kaspersky Endpoint Security 11.x для Windows'
SELECT
    name AS lookup
FROM
    tab_cls
WHERE
    id = 103000178;
    
-- Поиск АИБа (Бердюгин В.Н.)
SELECT
    fio AS lookup
FROM
    tab_infopeoples
WHERE
    id = 'OBD1001483';

-- Windows 10    
SELECT
    name AS lookup
FROM
    tab_cls
WHERE
    id = 190167;
    
-- Отделение Барнаул
SELECT
    name AS lookup
FROM
    tab_cls
WHERE
    id = 10530;
    
SELECT
    name AS lookup
FROM
    tab_cls
WHERE
    id = 10450;

-- Описание таблиц
SELECT
    *
FROM
    tab2_fields_starttables;

SELECT
    t2.name               AS ib_nsd_nsdtype_name,
    t1.nsdtypeid          AS ib_nsd_nsdtype,
    t3.value              AS ib_nsd_mode_value,
    t1.modeid             AS ib_nsd_mode,
    t1.automode_reason    AS ib_nsd_automode_reason,
    t1.id                 AS ib_nsd_id
FROM
    tab3_ib_nsd    t1,
    tab_cls        t2,
    list_ib_modes  t3
WHERE
        t1.nsdtypeid = t2.id (+)
    AND t1.modeid = t3.id (+)
    AND ( t1.assetid = 'OBD1025855' );


select NEXT_TEMPLATE_VAL as NewId from dual
    
    INSERT INTO tab_asl (
        aslid,
        assetid
    )
        SELECT
            'OBD1102605',
            asset2id
        FROM
            tab_connectview,
            tab_asset  a,
            tab_cls    c
        WHERE
                asset1id = 'OBD1025855'
            AND a.assetid = asset2id
            AND a.assetclasscode = c.id
            AND assettypeid = 15;
            

-- 16.02.2021
-- ОУ Отделения Барнаул
SELECT
    *
FROM
    tab_cls
WHERE
    name LIKE '%Отделение Барнаул%'
ORDER BY
    1;   

select * from tab_asset ;
--where name like  
    
-- 15.02.2021
-- таблицы, в которых хранится информация по СЗИ
DESC tab3_ib;

DESC tab3_ib_nsd;

SELECT
    *
FROM
    tab3_ib;

SELECT
    *
FROM
    tab3_ib_nsd;

SELECT
    *
FROM
    all_tables
WHERE
    table_name LIKE 'TAB3_IB%';

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
SELECT
    COUNT(*)
FROM
    asur.tab_asset;

-- Объекты Отделения Барнаул
SELECT
    *
FROM
    asur.tab_asset
WHERE
    upper(fullname) LIKE '%8300 ELITE%';

SELECT
    *
FROM
    dba_users;

SELECT
    *
FROM
    user$;


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

SELECT
    *
FROM
    tab_asset;

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