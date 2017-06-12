structure template vo/site/cms;

# Disable some roles not used at T2s
"voms_mappings" ?= list(
    dict(
        'fqan', '/cms/Role=t1production',
        'enabled', false,
    ),
    dict(
        'fqan', '/cms/Role=hit1production',
        'enabled', false,
    ),
);
