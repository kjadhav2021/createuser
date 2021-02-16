# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include createuser
class createuser {
  lookup('users',Hash,'hash').each | String $username, Hash $attrs | {
    user{ $username:
      ensure   => 'present',
      comment  => $attrs['comment'],
      password => $attrs['password'],
    }
  }
}
