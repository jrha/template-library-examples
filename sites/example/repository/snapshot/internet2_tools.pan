structure template repository/snapshot/internet2_tools;

"name" = "internet2_tools";
"owner" = "grid.support@lal.in2p3.fr";
"protocols" = list(
    dict(
        "name", "http",
        "url", format("%s/%s/internet2_tools_sl6_x86_64", YUM_SNAPSHOT_ROOT_URL, YUM_INTERNET2_SNAPSHOT_DATE),
    ),
);
