FROM gentoo/stage3-amd64-hardened

LABEL Description="This image tests the Xtreemfs overlay" Vendor="Patrick Hieber" Version="0.1"

RUN emerge --sync &&
  emerge -n layman &&
  layman -f &&
  layman -a xtreemfs &&
  echo "=net-fs/xtreemfs-1.5 ~amd64" >> /etc/portage/package.keywords &&
  emerge -v =net-fs/xtreemfs-1.5
