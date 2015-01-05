class elk::server::service {
  service { $services :
    ensure => $service_ensure,
  }
}
