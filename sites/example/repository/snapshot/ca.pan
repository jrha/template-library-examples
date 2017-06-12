structure template repository/snapshot/ca;

"name" = "ca";
"owner" = "grid.support@lal.in2p3.fr";
"protocols" = list(
    dict(
        "name", "http",
        "url", format("%s/%s/egi_ca", YUM_SNAPSHOT_ROOT_URL, YUM_CA_RPM_SNAPSHOT_DATE),
    ),
);
