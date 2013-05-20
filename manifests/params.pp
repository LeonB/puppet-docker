# Class: docker::params
#
# This class defines default parameters used by the main module class docker
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to docker class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class docker::params {

	### Application related parameters

	$packages = $::operatingsystem ? {
		default => ['lxc-docker', "linux-image-extra-${kernelrelease}"]
	}

	$enabled = true

}
