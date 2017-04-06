node default {
  if ($::role) {
    include "roles::${::role}"
  } else {
    warning('There is no "role" parameter specified!!')
  }
}
