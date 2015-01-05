class elk::forwarder  (
  $logstash_server = '10.18.10.2',
  $logstash_port   = '5000',
  $check_files     = [ '/var/log/message', '/var/log/secure' ],
) inherits elk::params {
  anchor { 'elk::begin' : }
  ~> class { 'elk::forwarder::install' : }
  -> class { 'elk::forwarder::config' : }
  -> class { 'elk::forwarder::service' : }
  ~> anchor { 'elk::end' : }
}
