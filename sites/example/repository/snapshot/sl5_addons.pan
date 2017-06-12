structure template repository/snapshot/sl5_addons;


"name" = "sl5_addons";
"owner" = "grid.support@lal.in2p3.fr";
"protocols" = list(
    dict(
        "name", "http",
        "url", format("%s/%s/sl5_addons", YUM_SNAPSHOT_ROOT_URL, YUM_SNAPSHOT_DATE),
    ),
);

"contents" = dict(
    # pkg = perl-JSON-XS-2.30-1.el5.rf-i386
    escape("perl-JSON-XS-2.30-1.el5.rf-i386"), dict(
        "name", "perl-JSON-XS",
        "version", "2.30-1.el5.rf",
        "arch", "i386",
    ),
    # pkg = perl-JSON-XS-2.30-1.el5.rf-x86_64
    escape("perl-JSON-XS-2.30-1.el5.rf-x86_64"), dict(
        "name", "perl-JSON-XS",
        "version", "2.30-1.el5.rf",
        "arch", "x86_64",
    ),
);
