class example::cisco_config {

network_dns { 'default':
  ensure  => 'present',
  servers => ['8.8.8.8', '8.8.4.4'],
  search  => ['puppet.vm']
}
ios_config { 'nameserver1':
       command => 'ntp server 1.1.1.1',
       idempotent_regex => 'ntp server 1.1.1.1'
       }
ios_config { 'nameserver2':
       command => 'ntp server 1.1.1.2',
       idempotent_regex => 'ntp server 1.1.1.2'
     }
ios_config { 'nameserver3':
       command => 'ntp server 1.1.1.3',
       idempotent_regex => 'ntp server 1.1.1.3'
     }
     
}
