class elk::server::config {
  file { '/etc/elasticsearch/elasticsearch.yml' :
    owner  => $elk::params::user_name,
    group  => $elk::params::group_name,
    source => "puppet:///modules/elk/elasticsearch.yml",
  }
  file { '/etc/pki/tls/private/logstash-forwarder.key' :
    owner  => $elk::params::user_name,
    group  => $elk::params::group_name,
    source => "puppet:///modules/elk/logstash-forwarder.key",
  }
  file { '/etc/pki/tls/certs/logstash-forwarder.crt' :
    owner  => $elk::params::user_name,
    group  => $elk::params::group_name,
    source => "puppet:///modules/elk/logstash-forwarder.crt",
  }
}
