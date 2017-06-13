# NOTE: This template should be the LAST thing included in a
# machine profile.  If you include packages after this template
# then they will not be "resolved" and SPMA will not function
# correctly.

unique template repository/config;

include 'pan/functions';

include 'components/spma/config';

include 'repository/snapshot/snapshot_variables';

# Repositories related to base OS and quattor client (should be first)
include 'repository/config/os';

# Quattor repositories
include 'repository/config/quattor';

# Local Repositories
variable YUM_SITE_SNAPSHOT_NS ?= YUM_SNAPSHOT_NS;
variable SITE_REPOSITORY_LIST ?= list();
variable SITE_REPOSITORY_CONFIG ?= dict();
variable DEBUG = debug(format(
    "OS_REPOSITORY_LIST = %s\nSITE_REPOSITORY_LIST = %s\nSITE_REPOSITORY_CONFIG = %s",
    OS_REPOSITORY_LIST,
    SITE_REPOSITORY_LIST,
    SITE_REPOSITORY_CONFIG,
));
include 'quattor/functions/repository';
#'/software/repositories' = add_repositories(SITE_REPOSITORY_LIST, YUM_SITE_SNAPSHOT_NS);
'/software/repositories' = add_repositories(SITE_REPOSITORY_LIST);
'/software/repositories' = repository_config(SITE_REPOSITORY_CONFIG);

# Repositories related to grid middleware
# Only if it can be found in the loadpath (else this is a machine not running gLite
include if_exists('repository/config/grid');

# Repositories related to Nagios
variable REPOSITORY_CONFIG_NAGIOS ?= null;
variable REPOSITORY_CONFIG_NAGIOS_INCLUDE = {
    if (exists(REPOSITORY_CONFIG_NAGIOS) && is_defined(REPOSITORY_CONFIG_NAGIOS)) {
        return(REPOSITORY_CONFIG_NAGIOS);
    } else {
        return(null);
    };
};
include REPOSITORY_CONFIG_NAGIOS_INCLUDE;

# Register repository changes with yum based spma
'/software/components/spma/register_change' = {
    if (is_defined(QUATTOR_RELEASE) && (QUATTOR_RELEASE >= '13.2')) {
        append('/software/repositories');
    } else {
        SELF;
    };
};

# Cleanup repository information
include 'components/spma/repository_cleanup';
