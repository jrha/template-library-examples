template site/wn-cloning-config;

# Include cluster-specific configuration of profile cloning, if
# available.
variable PROFILE_CLONING_CLUSTER_CONFIG ?= 'site/wn-cloning-cluster-config';
variable PROFILE_CLONING_CLUSTER_CONFIG_INCLUDE ?= if_exists(PROFILE_CLONING_CLUSTER_CONFIG);
variable PROFILE_CLONING_CLUSTER_CONFIG_INCLUDE ?= debug(format(
    'Cluster-specific configuration (%s) for profile cloning not found',
    PROFILE_CLONING_CLUSTER_CONFIG,
));
include PROFILE_CLONING_CLUSTER_CONFIG_INCLUDE;

variable PROFILE_CLONING_ENABLED ?= false;
variable PROFILE_CLONING_ELIGIBLE_NODES ?= 'wn.*\.example\.org';


# Eligible nodes where profile cloning must be disabled
variable PROFILE_CLONING_DISABLED ?= dict(
);
