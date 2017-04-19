node default {
#  $role = $trusted['extensions']['pp_role']
  $nick_role = $trusted['extensions']['myshortname']
  notify{"Nick ${nick_role}":}
  if ($::role) {
    include "role::${::role}"
  } else {
    warning('There is no "role" parameter specified!!')
  }
}
