class user::adminusers {

group {'admin':
ensure => present,
}

user {'neeko':
ensure => present,
gid => 'admin',
shell => '/bin/bash',
home => '/home/neeko',
managehome => 'true',
password => 'neeko',
}
}