structure template repository/snapshot/sl610_x86_64_errata;

"name" = "sl610_x86_64_errata";
"owner" = "grid.support@lal.in2p3.fr";
"protocols" = list(
    dict(
        "name", "http",
        "url", format("%s/%s/sl610-x86_64_errata", YUM_SNAPSHOT_ROOT_URL, YUM_SNAPSHOT_DATE),
    ),
);
