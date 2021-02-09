-- LIV 05.02.2021 ��������� ������� �������� ������������ � ����������� �� ���� ��� ��������� �������
-- ��� ������������� � ������� ���� FIO �������� ������� 01, ������������� � ������� ������� �����, ����� ������ ����� ������ ������
-- ��� ������������� ���� 01FamilyIO ������������� � ������� ������� �����, ������ ����� ������ ������
SELECT
    'CREATE USER "'
    ||
    CASE
        WHEN a.username LIKE '01%' THEN
                upper(a.username)
        ELSE
            upper('01' || a.username)
    END
    || '" PROFILE DEFAULT IDENTIFIED BY "'
    ||
    CASE
        WHEN a.username LIKE '01%' THEN
                upper(a.username)
        ELSE
            upper('01' || a.username)
    END
     || '";' comm
FROM
    tab3_sec_users  a,
    dba_users       s
WHERE
    a.username = s.username
ORDER BY
    1;

SELECT
    'GRANT '
    || decode(granted_role, 'ASUR_ADMIN_ROLE', 'ASUR_ADMIN_SEGM_ROLE', granted_role)
    || ' TO "'
    ||
    CASE
        WHEN username LIKE '01%' THEN
                upper(username)
        ELSE
            upper('01' || username)
    END
    || '"'
    || decode(admin_option, 'YES', ' WITH ADMIN OPTION;', ';') comm
FROM
    dba_role_privs,
    tab3_sec_users
WHERE
        grantee = username
    AND granted_role NOT IN ( 'DBA', 'REPORT_ROLE', 'REPORT_USER_ROLE' )
ORDER BY 1;