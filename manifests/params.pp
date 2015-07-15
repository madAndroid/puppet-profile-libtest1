# == Class libtest1::params
#
# This class is meant to be called from libtest1.
# It sets variables according to platform.
#
class libtest1::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'libtest1'
      $service_name = 'libtest1'
    }
    'RedHat', 'Amazon': {
      $package_name = 'libtest1'
      $service_name = 'libtest1'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
