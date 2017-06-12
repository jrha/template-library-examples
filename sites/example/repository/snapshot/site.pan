structure template repository/snapshot/site;

"name" = "site";
"owner" = "grid.support@lal.in2p3.fr";
"protocols" = list(
    dict(
        "name", "http",
        "url", format("%s/%s/site", YUM_SNAPSHOT_ROOT_URL, YUM_SNAPSHOT_DATE),
    ),
);
