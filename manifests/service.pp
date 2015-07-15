# == Class libtest1::service
#
# This class is meant to be called from libtest1.
# It ensure the service is running.
#
class libtest1::service {

  service { $::libtest1::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
