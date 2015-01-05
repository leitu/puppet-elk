class elk::forwarder::install {
  package { 'logstash-forwarder' :
    ensure => present,
  }
}
