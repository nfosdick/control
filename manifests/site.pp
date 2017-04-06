node default {
  if ($::role) {
    include "role::${::role}"
  } else {
    warning('There is no "role" parameter specified!!')
  }
}