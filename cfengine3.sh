POLICYHOST="1.2.3.4"
ENABLE_CLASSES="class1,class2"
CFENGINE_VERSION="3.3.1-1"

#
# Install 
#
yum -y install http://pantheon.yale.edu/~rs253/cfengine/cfengine-community-${CFENGINE_VERSION}.x86_64.rpm

#
# Do you have a policyserver you never want to phone home to?
# If so, null route them
#
# sudo netstat -nr
# sudo ip route add blackhole ${POLICYHOST} 
# netstat -nr

#
# Do you need to move group.cf into place for workable tree?
# If so, do it
#
# sudo cp \
# /var/cfengine/masterfiles/inputs/tribe/group.cf \
# /var/cfengine/inputs/group.cf
# sudo cp \
# /var/cfengine/masterfiles/inputs/core/failsafe.cf \
# /var/cfengine/inputs/failsafe.cf

#
# Run cf-agent twice, no locks, verbose, with poz-matched classes
# sudo /var/cfengine/bin/cf-agent -Kv -D ${ENABLE_CLASSES}
# sudo /var/cfengine/bin/cf-agent -Kv -D ${ENABLE_CLASSES}
