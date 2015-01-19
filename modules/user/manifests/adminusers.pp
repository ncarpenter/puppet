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
ssh_authorized_key { 'neeko_key':
user => 'neeko',
type => 'rsa',
key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDdAgEQFXGfV13kEKheh+GcBaXFsZUZlYQIfDnrNuq6WxUmxx+ucotc2SU3wj4yfvC1KeD47fWR65Jbf/MBZNzrlZg8PmcvX8YnR0GUOGA4igy4XIATuU3XGrIGwJ7GiH8wFHnAK+yJOvbq4YStMd/o619tbhhQhEF0HtTqPFdre4BTB4N3pHyuvART9iGJZIBd3S1MZtr6irJsPTKGe/6u/NlAlShOemXvuzmYVt/HCSjtI7/k21KgSEQwker1YTGXzuh6GXxrzW+7aJdzutifnhLxyAY+TMLRb08cnvPzrAH7wFNX/nVgJpu+59WPW6ytONmV5mRqpa43nrXONZq3'
}
}