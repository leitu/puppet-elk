class elk::forwarder::service {
  service { 'logstash-forwarder' :
    ensure => $elk::forwarder::service_ensure,
  }
}
