node /cookbook.*/ {
	include memcached
	include ssh
	include user::adminusers
}
