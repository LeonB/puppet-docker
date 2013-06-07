class docker::package {

    package  { $docker::packages:
        ensure  => $docker::ensure,
        require => Apt::Source['docker'],
    }

    apt::source { 'docker':
        ensure      => $docker::ensure,
        location    => 'http://ppa.launchpad.net/dotcloud/lxc-docker/ubuntu',
        key         => 'E61D797F63561DC6',
        include_src => false,
    }

}
