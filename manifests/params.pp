class elk::params {
  $user_name      = 'root'
  $group_name     = 'root'
  $package_ensure = 'present'
  $file_mode      = '0755'
  $service_ensure = 'running'
  case $::osfamily {
    'RedHat' : {
      $deps = [ 'java-1.7.0-openjdk', 'httpd' ]
      $package_names = [ 'logstash', 'elasticsearch', 'kibana' ]
      $service = [ 'logstash', 'elasticsearch', 'httpd' ]
    }
    default : {
      fail ( "Your ${osfmaily} is not supported yet" )
    }
  }
}
