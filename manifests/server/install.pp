class elk::server::install inherits elk::params{
  package { $deps :
    ensure => present,
  } ->
  package { $package_names :
    ensure => present,
  }
}
