structure template repository/snapshot/el7x_x86_64;

"name" = "el7x_x86_64";
"owner" = "grid.support@lal.in2p3.fr";
"protocols" = list(
    dict(
        "name", "http",
        "url", format("%s/%s/%s-x86_64", YUM_SNAPSHOT_ROOT_URL, YUM_SNAPSHOT_DATE, YUM_OS_DISTRIBUTION_NAME),
    ),
);
