node default {
  class { 'repo' : }
  -> class { 'elk::forwarder' :
       }
}
