class docker(
	$packages = params_lookup( 'packages' ),
	$enabled  = params_lookup( 'enabled' ),
  ) inherits docker::params {

    # Depends on lxc
    Class['lxc'] -> Class['docker']

  	$ensure = $enabled ? {
  		true => present,
  		false => absent
  	}

	include docker::package, docker::config, docker::service
}
