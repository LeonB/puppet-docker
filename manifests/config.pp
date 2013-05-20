class docker::config {

    # do package before config
    Class['docker::package'] -> Class['docker::config']
}
