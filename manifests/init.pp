# == Class: libtest1
#
# Full description of class libtest1 here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.

class libtest1 (

  $package_name = $::libtest1::params::package_name,
  $service_name = $::libtest1::params::service_name,

) inherits ::libtest1::params {


  # validate parameters here

  class { '::libtest1::install': } ->
  class { '::libtest1::config': } ~>
  class { '::libtest1::service': } ->
  Class['::libtest1']


}
