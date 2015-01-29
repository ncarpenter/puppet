class puppet {
 file { '/usr/local/bin/papply':
 source => 'puppet:///modules/puppet/papply.sh',
 mode => '0755',
 }
 file { '/usr/local/bin/pull-updates':
 source => 'puppet:///modules/puppet/pull-updates.sh',
 mode => '0755',
 }
 file { '/home/centos/.ssh/id_rsa':
   source => 'puppet:///modules/puppet/centos.priv',
   mode   => '0600',
 }
 file {'/etc/puppet/hiera':
   ensure => directory,
 }
 file {'/etc/puppet/hiera.yaml'
   source  => 'puppet:///modules/puppet/hiera.yaml',
   require => File['/etc/puppet/hiera'],
 }

 cron { 'run-puppet':
 ensure => 'present',
 user => 'centos',
 command => '/usr/local/bin/pull-updates',
 minute => '*/1',
 hour => '*',
 }
}