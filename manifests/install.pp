# == Class logclient::install
#
class logclient::install {

  package { $logclient::package_name:
    ensure => present,
  }
  $config_hash = {
    'START'        => 'true',
    'LS_GROUP'     => 'root',
    'LS_USER'      => 'root',
    'LS_HOME'      => '/opt/logstash',
    'HOME'         => '/opt/logstash',
    'SINCEDB_DIR'  => '/opt/logstash/tmp',
  }

  class { 'logstash':
    manage_repo     => true,
    repo_version    => '1.4',
    status          => 'enabled',
    init_defaults   => $config_hash,
    java_install    => true,
    install_contrib => true,
  }

}
