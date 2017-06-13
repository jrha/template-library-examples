structure template repository/snapshot/el7_epel;

"name" = "el7_epel";
"owner" = "grid.support@lal.in2p3.fr";
"protocols" = list(
    dict(
        "name", "http",
        "url", format("%s/%s/el7_epel", YUM_SNAPSHOT_ROOT_URL, YUM_EPEL_SNAPSHOT_DATE),
);

"contents" = dict(
# pkg = perl-common-sense-3.5-1.el6-noarch
escape("perl-common-sense-3.6-4.el7-noarch"), dict("name", "perl-common-sense", "version", "3.6-4.el7", "arch", "noarch"),
# pkg = perl-JSON-XS-2.27-2.el6-x86_64
escape("perl-JSON-XS-3.01-2.el7-x86_64"), dict("name", "perl-JSON-XS", "version", "3.01-2.el7", "arch", "x86_64"),
# pkg = perl-Proc-ProcessTable-0.48-1.el6-x86_64
escape("perl-Proc-ProcessTable-0.48-1.el7-x86_64"), dict("name", "perl-Proc-ProcessTable", "version", "0.48-1.el7", "arch", "x86_64"),
# pkg = perl-Set-Scalar-1.25-2.el6-noarch
escape("perl-Set-Scalar-1.25-9.el7-noarch"), dict("name", "perl-Set-Scalar", "version", "1.25-9.el7", "arch", "noarch"),
);
