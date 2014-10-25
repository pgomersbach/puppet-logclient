# == Class logclient::params
#
# This class is meant to be called from logclient
# It sets variables according to platform
#
class logclient::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'logclient'
      $service_name = 'logclient'
    }
    'RedHat', 'Amazon': {
      $package_name = 'logclient'
      $service_name = 'logclient'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
