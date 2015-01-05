class elk::server {
  anchor { 'elk::begin' : }
  ~> class { 'elk::server::install' : }
  -> class { 'elk::server::config' : }
  -> class { 'elk::server::service' : }
  ~> anchor { 'elk::end' : }
}
