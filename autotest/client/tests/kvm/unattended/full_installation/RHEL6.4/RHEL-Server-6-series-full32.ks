install
KVM_TEST_MEDIUM
text
reboot
lang en_US.UTF-8
keyboard us
key --skip
network --bootproto dhcp
rootpw redhat
firewall --disabled
selinux --enforcing
timezone --utc Asia/Shanghai
firstboot --disable
bootloader --location=mbr --append="console=tty0 console=ttyS0,115200"
zerombr
#clearpart --all --initlabel
#autopart
# The following is the partition information you requested
# Note that any partitions you deleted are not expressed
# here so unless you clear all partitions first, this is
# not guaranteed to work
clearpart --all --initlabel
#volgroup VolGroup --pesize=131072 pv.008002
#logvol / --fstype=ext4 --name=LogVol_root --vgname=VolGroup --grow --size=1
#logvol swap --name=LogVol_swap --vgname=VolGroup --size=8192

part /boot --fstype=ext4 --size=500
part swap --size=2000
part / --fstype=ext4 --grow --size=5000
#part pv.008002 --grow --size=1


xconfig --startxonboot
poweroff

%packages
@additional-devel
@albanian-support
@amazigh-support
@arabic-support
@armenian-support
@assamese-support
@azerbaijani-support
@backup-client
@backup-server
@base
@basic-desktop
@basque-support
@belarusian-support
@bengali-support
@bhutanese-support
@brazilian-support
@breton-support
@british-support
@bulgarian-support
@burmese-support
@catalan-support
@chhattisgarhi-support
@chichewa-support
@chinese-support
@cifs-file-server
@client-mgmt-tools
@compat-libraries
@console-internet
@coptic-support
@core
@croatian-support
@czech-support
@danish-support
@debugging
@desktop-debugging
@desktop-platform
@desktop-platform-devel
@development
@dial-up
@directory-client
@directory-server
@dutch-support
@eclipse
@emacs
@esperanto-support
@estonian-support
@ethiopic-support
@faroese-support
@fijian-support
@filipino-support
@finnish-support
@fonts
@french-support
@frisian-support
@friulian-support
@ftp-server
@gaelic-support
@galician-support
@general-desktop
@georgian-support
@german-support
@graphical-admin-tools
@graphics
@greek-support
@gujarati-support
@hardware-monitoring
@hebrew-support
@hiligaynon-support
@hindi-support
@hungarian-support
@icelandic-support
@identity-management-server
@indonesian-support
@infiniband
@input-methods
@interlingua-support
@internet-browser
@inuktitut-support
@irish-support
@italian-support
@japanese-support
@java-platform
@kannada-support
@kashmiri-support
@kashubian-support
@kazakh-support
@kde-desktop
@khmer-support
@kinyarwanda-support
@konkani-support
@korean-support
@kurdish-support
@lao-support
@large-systems
@latin-support
@latvian-support
@legacy-unix
@legacy-x
@lithuanian-support
@low-saxon-support
@macedonian-support
@mail-server
@mainframe-access
@maithili-support
@malagasy-support
@malayalam-support
@malay-support
@maltese-support
@manx-support
@maori-support
@marathi-support
@mongolian-support
@mysql
@mysql-client
@nepali-support
@network-file-system-client
@network-server
@network-tools
@nfs-file-server
@northern-sotho-support
@norwegian-support
@occitan-support
@oriya-support
@performance
@perl-runtime
@persian-support
@php
@polish-support
@portuguese-support
@postgresql
@postgresql-client
@print-client
@print-server
@punjabi-support
@remote-desktop-clients
@romanian-support
@ruby-runtime
@russian-support
@sanskrit-support
@sardinian-support
@scientific
@security-tools
@serbian-support
@server-platform
@server-platform-devel
@server-policy
@sindhi-support
@sinhala-support
@slovak-support
@slovenian-support
@smart-card
@somali-support
@southern-ndebele-support
@southern-sotho-support
@spanish-support
@storage-client-fcoe
@storage-client-iscsi
@storage-client-multipath
@storage-server
@swahili-support
@swati-support
@swedish-support
@system-admin-tools
@system-management
@system-management-messaging-client
@system-management-snmp
@system-management-wbem
@tagalog-support
@tajik-support
@tamil-support
@technical-writing
@telugu-support
@tetum-support
@tex
@thai-support
@tibetan-support
@tsonga-support
@tswana-support
@turbogears
@turkish-support
@turkmen-support
@ukrainian-support
@upper-sorbian-support
@urdu-support
@uzbek-support
@venda-support
@vietnamese-support
@virtualization
@virtualization-client
@virtualization-platform
@walloon-support
@web-server
@web-servlet
@welsh-support
@x11
@xhosa-support
@zulu-support
abrt-gui
aide
alacarte
amtu
ant
arptables_jf
arpwatch
atlas
at-spi-python
audispd-plugins
audit-viewer
authd
babel
bacula-client
bind
bind-chroot
bind-dyndb-ldap
bitmap-fixed-fonts
bitmap-lucida-typewriter-fonts
bltk
brltty
byzanz
bzr
cachefilesd
certmonger
chrpath
cjkuni-fonts-ghostscript
cmake
compat-dapl
compat-gcc-34
compat-gcc-34-c++
compat-gcc-34-g77
compat-openmpi
conman
cpupowerutils
crypto-utils
ctags-etags
cups-devel
cups-lpd
cvs-inetd
cyrus-imapd
dcraw
dejagnu
desktop-file-utils
device-mapper-persistent-data
dhcp
dnsmasq
docbook-utils-pdf
dos2unix
dovecot-mysql
dovecot-pgsql
dovecot-pigeonhole
dropwatch
dtach
dump
dumpet
dvgrab
e2fsprogs-devel
ebtables
eclipse-mylyn-cdt
eclipse-mylyn-pde
eclipse-mylyn-trac
eclipse-mylyn-webtasks
eclipse-mylyn-wikitext
eclipse-subclipse-graph
ecryptfs-utils
edac-utils
efax
ElectricFence
emacs-auctex
emacs-gnuplot
emacs-nox
expat-devel
expect
fence-agents
fence-virtd-libvirt
fence-virtd-multicast
fence-virtd-serial
fetchmail
fftw
fftw-devel
fftw-static
finger
finger-server
firstaidkit-gui
flightrecorder
freeglut-devel
freeipmi
freeipmi-bmc-watchdog
freeipmi-ipmidetectd
freeradius
ftp
fuse-devel
gcc-gnat
gcc-java
gcc-objc
gcc-objc++
gconf-editor
gdb-gdbserver
gedit-plugins
genisoimage
glade3
glibc-utils
gmp-devel
gnome-common
gnome-devel-docs
gnome-games
gnome-pilot
gnome-pilot-conduits
gnutls-devel
gpm
gsl
gsl-devel
gsl-static
gstreamer-plugins-base-devel
gtk2-devel-docs
hardlink
hesinfo
hmaccalc
hplip
hplip-gui
httpd-devel
hunspell-devel
i2c-tools
icedtea-web
ImageMagick
imake
infiniband-diags
inkscape
ipmitool
ipset
iptables-devel
iptraf
iptstate
irssi
isdn4k-utils
isns-utils
jpackage-utils
junit
jwhois
kabi-yum-plugins
kdebase-devel
kdebase-workspace-akonadi
kdebase-workspace-devel
kdebase-workspace-python-applet
kdegraphics-devel
kdelibs-apidocs
kdelibs-devel
kdemultimedia-devel
kdenetwork-devel
kdepim-devel
kdepimlibs-devel
kdesdk
kdesdk-devel
kdewebdev
kernel-doc
krb5-appl-clients
krb5-appl-servers
krb5-auth-dialog
krb5-pkinit-openssl
krb5-server
krb5-server-ldap
krb5-workstation
ksc
ksh
lapack
ldapjdk
lftp
libaio-devel
libblkid-devel
libbonobo-devel
libcap-devel
libdbi-dbd-mysql
libdbi-dbd-pgsql
libdrm-devel
libgcrypt-devel
libglade2-devel
libgnomeui-devel
libgudev1-devel
libhugetlbfs-devel
libibcommon
libibverbs-devel
libmemcached
libnl-devel
libsss_sudo
libstdc++-docs
libtiff-devel
libtopology-devel
libudev-devel
libusb-devel
libuuid-devel
libvirt-cim
libvirt-java
libvirt-snmp
libXau-devel
libXaw-devel
libXinerama-devel
libXmu
libXmu-devel
libXp
libXpm-devel
libXrandr-devel
libxslt-devel
linuxptp
lksctp-tools
lm_sensors
logwatch
lslk
lsscsi
mailman
mc
memcached
memtest86+
mercurial
mgetty
migrationtools
mipv6-daemon
mkbootdisk
mksh
mod_auth_kerb
mod_auth_mysql
mod_auth_pgsql
mod_authz_ldap
mod_dav_svn
mod_nss
mod_revocator
mpich2
mpitests-mvapich
mpitests-mvapich2
mpitests-openmpi
mrtg
mstflint
mtools
mt-st
mtx
mutt
mvapich
mvapich2
mysql-bench
mysql-connector-java
mysql-test
nasm
ncompress
ncurses-term
netlabel_tools
netpbm-progs
net-snmp-devel
net-snmp-perl
net-snmp-python
NetworkManager-openswan
nmap
nscd
nss_db
nss-pam-ldapd
numactl-devel
numpy
nuxwdog
oddjob
opencryptoki
openhpi
openhpi-subagent
OpenIPMI
openldap-clients
openldap-servers
openmotif
openmotif22
openmotif-devel
openmpi
openmpi-devel
openscap
openscap-utils
opensm
openwsman-server
oprofile-gui
oprofile-jit
pam_krb5
pam_ldap
papi
papi-devel
pax
pcre-devel
perftest
perl-Cache-Memcached
perl-CGI
perl-CGI-Session
perl-Date-Calc
perl-Date-Manip
perl-DBD-MySQL
perl-DBD-Pg
perl-DBD-SQLite
perl-Frontier-RPC
perl-LDAP
perl-Mozilla-LDAP
perl-suidperl
perl-Sys-Virt
perl-Test-Pod
perl-Test-Pod-Coverage
perltidy
pexpect
php-ldap
php-mysql
php-odbc
php-pecl-apc
php-pecl-memcache
php-pgsql
php-soap
php-xmlrpc
policycoreutils-gui
popt-devel
postgresql-contrib
postgresql-jdbc
postgresql-plperl
postgresql-plpython
postgresql-pltcl
postgresql-test
pptp
PyPAM
PyQt4-devel
python-dmidecode
python-docs
python-memcached
python-saslwrapper
python-twisted
python-volume_key
qemu-guest-agent
qperf
qpid-tests
qt3-MySQL
qt3-ODBC
qt3-PostgreSQL
qt-doc
qt-mysql
qt-odbc
qt-postgresql
quagga
radvd
rdesktop
rdist
rhdb-utils
rhythmbox-upnp
rpmdevtools
rpmlint
rp-pppoe
rrdtool
rsh
rsh-server
rsyslog-gnutls
rsyslog-gssapi
rsyslog-mysql
rsyslog-pgsql
rsyslog-relp
ruby-irb
ruby-qpid-qmf
rusers
rusers-server
rwho
sabayon
sabayon-apply
samba
samba-winbind
sane-backends-devel
sblim-cim-client
sblim-cim-client2
sblim-cmpi-dhcp
sblim-cmpi-dns
sblim-cmpi-fsvol
sblim-cmpi-network
sblim-cmpi-nfsv3
sblim-cmpi-nfsv4
sblim-cmpi-params
sblim-cmpi-samba
sblim-cmpi-sysfs
sblim-cmpi-syslog
sblim-gather
sblim-gather-provider
sblim-indication_helper
sblim-smis-hba
sblim-tools-libra
scipy
screen
scrub
SDL-devel
sdparm
seahorse-plugins
sendmail
sendmail-cf
setroubleshoot
sg3_utils
sgpio
slapi-nis
sox
spice-client
spice-xpi
squashfs-tools
squid
srptools
star
startup-notification-devel
stunnel
subscription-manager-migration
subscription-manager-migration-data
symlinks
syslinux
system-config-kickstart
system-config-lvm
systemtap-client
systemtap-initscript
systemtap-sdt-devel
systemtap-server
talk
talk-server
tcl-devel
tcl-pgtcl
tcp_wrappers
tcp_wrappers-devel
tdb-tools
telnet
telnet-server
terminus-fonts
texinfo
tftp
tftp-server
tigervnc
tigervnc-server
tk-devel
tog-pegasus
totem-upnp
tpm-tools
tree
trousers
tsclient
tuna
tunctl
tuned
tuned-utils
udftools
unique-devel
unix2dos
unixODBC-devel
uuidd
vim-X11
vinagre
vlock
volume_key
watchdog
wireshark
wireshark-gnome
wodim
x3270-text
x86info
xdelta
xferstats
xfig
xguest
xmltoman
xmlto-tex
xorg-x11-fonts-75dpi
xorg-x11-fonts-cyrillic
xorg-x11-fonts-ethiopic
xorg-x11-fonts-ISO8859-14-100dpi
xorg-x11-fonts-ISO8859-14-75dpi
xorg-x11-fonts-ISO8859-15-75dpi
xorg-x11-fonts-ISO8859-1-75dpi
xorg-x11-fonts-ISO8859-2-100dpi
xorg-x11-fonts-ISO8859-2-75dpi
xorg-x11-fonts-ISO8859-9-100dpi
xorg-x11-fonts-ISO8859-9-75dpi
xorg-x11-proto-devel
xorg-x11-twm
xorg-x11-xdm
xrestop
xterm
xz-devel
ypserv
yum-plugin-aliases
yum-plugin-changelog
yum-plugin-downloadonly
yum-plugin-tmprepo
yum-plugin-verify
yum-plugin-versionlock
yum-presto
zsh

%post --interpreter /bin/bash
#OS configure for ldtp gui test
gconftool-2 --set /desktop/gnome/interface/accessibility --type=boolean true
gconftool-2 -s /apps/gnome-session/options/show_root_warning --type=boolean false
gconftool-2 -s /apps/gnome-screensaver/idle_activation_enabled --type=boolean false
gconftool-2 -s /apps/gnome-power-manager/ac_sleep_display --type=int 0

#stop the update of PackageKit
gconftool-2 --set /apps/gnome-packagekit/update-icon/frequency_get_updates --type=int 0

#automatic login
sed -i '/\[daemon\]/aAutomaticLogin=root\nAutomaticLoginEnable=True' /etc/gdm/custom.conf

%post --interpreter /usr/bin/python
import socket, os
os.system('dhclient')
os.system('chkconfig sshd on')
os.system('iptables -F')
os.system('echo 0 > /selinux/enforce')
os.system('chkconfig NetworkManager on')
os.system('sed -i "/^HWADDR/d" /etc/sysconfig/network-scripts/ifcfg-eth0')
client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect(("autotest_host_ip", 12323))
client.send("done")
client.close()

