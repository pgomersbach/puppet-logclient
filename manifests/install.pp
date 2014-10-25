# == Class logclient::install
#
class logclient::install {

  package { $logclient::package_name:
    ensure => present,
  }
}
