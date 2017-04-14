node default {
#  $role = $trusted['extensions']['pp_role']
#  notify{"Nick ${role}":}
  if ($::role) {
    include "role::${::role}"
  } else {
    warning('There is no "role" parameter specified!!')
  }
}
