class elk::server::config {
  file { '/etc/elasticsearch/elasticsearch.yml' :
    owner  => $elk::params::user_name,
    group  => $elk::params::group_name,
    source => "puppet:///modules/elk/elasticsearch.yml",
  }
}
