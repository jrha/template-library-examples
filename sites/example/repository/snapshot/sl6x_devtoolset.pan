structure template repository/snapshot/sl6x_devtoolset;

"name" = "sl6x_devtoolset";
"owner" = "grid.support@lal.in2p3.fr";
"protocols" = list(
    dict(
        "name", "http",
        "url", format("%s/%s/sl6x_devtoolset", YUM_SNAPSHOT_ROOT_URL, YUM_SNAPSHOT_DATE),
    ),
);
