# == Class: logclient
#
# Wrapperclass for logstash client installation
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class logclient (
  $package_name = $logclient::params::package_name,
  $service_name = $logclient::params::service_name,
) inherits logclient::params {

  # validate parameters here

  class { 'logclient::install': } ->
  class { 'logclient::config': } ~>
  class { 'logclient::service': } ->
  Class['logclient']
}
