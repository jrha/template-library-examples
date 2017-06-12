structure template repository/snapshot/sl5x_x86_64;

"name" = "sl5x_x86_64";
"owner" = "grid.support@lal.in2p3.fr";
"protocols" = list(
    dict(
        "name", "http",
        "url", format("%s/%s/sl5x-x86_64/SL", YUM_SNAPSHOT_ROOT_URL, YUM_SNAPSHOT_DATE),
    ),
);

# These packages are in EPEL already...
"excludepkgs" = {
    append('iwl5150-firmware');
    append('iwl6000-firmware');
    SELF;
};
