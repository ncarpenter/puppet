#Manage SSH
class ssh {
	service { 'ssh':
	ensure => running,
	}

file { '/etc/ssh/sshd_config':
  source => 'puppet:///module/ssh/sshd_conifg',
  notify => Service['ssh'],
  owner  => 'root',
  group  => 'root',
  }
}