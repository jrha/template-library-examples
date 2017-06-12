structure template repository/snapshot/sl6_addons;

"name" = "sl6_addons";
"owner" = "grid.support@lal.in2p3.fr";
"protocols" = list(
    dict(
        "name", "http",
        "url", format("%s/%s/sl6_addons", YUM_SNAPSHOT_ROOT_URL, YUM_SNAPSHOT_DATE),
    ),
);

"contents" = dict(
    escape("perl-JSON-XS-2.30-1.el6.rf-x86_64"), dict(
        "name", "perl-JSON-XS",
        "version", "2.30-1.el6.rf",
        "arch", "x86_64",
    ),
);
