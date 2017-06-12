structure template repository/snapshot/emi_3_0_sl5_x86_64_updates;

"name" = "emi_3_0_sl5_x86_64_updates";
"owner" = "grid.support@lal.in2p3.fr";
"protocols" = list(
    dict(
        "name", "http",
        "url", format("%s/%s/emi_3_updates_sl5_x86_64", YUM_SNAPSHOT_ROOT_URL, YUM_EMI_SNAPSHOT_DATE),
    ),
);
