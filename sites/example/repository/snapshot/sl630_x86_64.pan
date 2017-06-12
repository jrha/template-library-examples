structure template repository/snapshot/sl630_x86_64;

"name" = "sl630_x86_64";
"owner" = "grid.support@lal.in2p3.fr";
"protocols" = list(
    dict(
        "name", "http",
        "url", format("%s/%s/sl630-x86_64", YUM_SNAPSHOT_ROOT_URL, YUM_SNAPSHOT_DATE),
    ),
);
