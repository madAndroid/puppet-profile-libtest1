# == Class libtest1::install
#
# This class is called from libtest1 for install.
#
class libtest1::install {

  package { $::libtest1::package_name:
    ensure => present,
  }
}
