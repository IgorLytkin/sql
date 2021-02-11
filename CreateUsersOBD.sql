SELECT
    'GRANT '
    || decode(granted_role, 'ASUR_ADMIN_ROLE', 'ASUR_ADMIN_SEGM_ROLE', granted_role)
    || ' TO "&Param_SEGMPREF.'
    || username
    || '"'
    || decode(admin_option, 'YES', ' WITH ADMIN OPTION;', ';') comm
FROM
    dba_role_privs,
    tab3_sec_users
WHERE
        grantee = username
    AND granted_role NOT IN ( 'DBA', 'REPORT_ROLE', 'REPORT_USER_ROLE' );