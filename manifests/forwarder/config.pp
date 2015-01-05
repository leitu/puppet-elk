class elk::forwarder::config inherits elk::forwarder {
  file { '/etc/logstash-forwarder' :
    ensure => $file_ensure,
    content => template('elk/logstash-forwarder.erb'),
  }
  file { '/etc/init.d/logstash-forwarder' :
    ensure => $file_ensure,
    owner  => $user_name,
    group  => $group_name,
    mode   => $file_mode,
    source => "puppet:///modules/elk/logstash-forwarder",
  }
  file { '/etc/pki/tls/certs/logstash-forwarder.crt' :
    ensure => $file_ensure,
    owner  => $user_name,
    group  => $group_name,
    source => "puppet:///modules/elk/logstash-forwarder.crt",
  }
}
