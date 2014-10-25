# == Class logclient::service
#
# This class is meant to be called from logclient
# It ensure the service is running
#
class logclient::service {

  service { $logclient::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
