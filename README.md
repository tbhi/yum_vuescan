Simple script to create a yum repository with the latest vuescan rpm.


Create the following file in /etc/yum.repos.d/vuescan.repo:

    [vuescan]
    name=vuescan
    baseurl=file:///var/tmp/yum_vuescan
    enabled=1
    gpgcheck=0

Based on https://github.com/mheffner/zoom-rpm-repo.
