structure template repository/snapshot/umd_3_0_sl5_x86_64_base;

"name" = "umd_3_0_sl5_x86_64_base";
"owner" = "grid.support@lal.in2p3.fr";
"protocols" = list(
    dict(
        "name", "http",
        "url", YUM_SNAPSHOT_ROOT_URL + "/" + YUM_EMI_SNAPSHOT_DATE + "/umd_3_base_sl5_x86_64",
    ),
);
