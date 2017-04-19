node default {
#  $role = $trusted['extensions']['pp_role']
  $nick_role = $trusted['extensions']['1.3.6.1.4.1.34380.1.2.1.1']
  notify{"Nick ${nick_role}":}
  if ($::role) {
    include "role::${::role}"
  } else {
    warning('There is no "role" parameter specified!!')
  }
}
