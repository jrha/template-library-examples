structure template repository/snapshot/internet2_kernel;

"name" = "internet2_kernel";
"owner" = "grid.support@lal.in2p3.fr";
"protocols" = list(
    dict(
        "name", "http",
        "url", format("%s/%s/internet2_kernel_sl6_x86_64", YUM_SNAPSHOT_ROOT_URL, YUM_INTERNET2_SNAPSHOT_DATE),
    ),
);
