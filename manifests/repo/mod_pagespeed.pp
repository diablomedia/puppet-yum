# = Class: yum::repo::mod-pagespeed
#
# This class installs the mod-pagespeed repo
#
class yum::repo::mod_pagespeed (
  $baseurl = 'http://dl.google.com/linux/mod-pagespeed/rpm/stable/$basearch',
) {
  yum::managed_yumrepo { 'mod-pagespeed':
    descr    => 'mod-pagespeed',
    baseurl  => $baseurl,
    enabled  => 1,
    gpgcheck => 1,
    gpgkey   => 'https://dl-ssl.google.com/linux/linux_signing_key.pub'
  }
}
