Package {
  allow_virtual => false,
}

# Define filebucket 'main':
filebucket { 'main':
  server => $::server,
  path => false,
}

# Make filebucket 'main' the default backup location for all File resources:
File { backup => 'main' }

node /puppetca/ {
  include roles::puppet::mom
}

node default {
}
