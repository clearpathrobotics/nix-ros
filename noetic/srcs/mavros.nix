{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mavlink";
    repo = "mavros";
    rev = "3795202c521956c148a80e62fbd3a2947655d611";
    hash = "sha256-o4NgtRDLnQSV9myFeEb2WK5npoisj0cGEqsp9RjEoTs=";
    name = "mavlink-mavros-3795202c521956c148a80e62fbd3a2947655d611";
  });
in
{
  libmavconn = pkg "sha256-3sdj8GvbAhWjkNfYHH2BOwDF/yzU735zqpzNQH0Xg40=" "libmavconn";
  mavros = pkg "sha256-EX6tkOJul7DJvQAALsNSdJIcPN5vEHMlCoeMnS9r3Cg=" "mavros";
  mavros_extras = pkg "sha256-p/QGy7dnH/GYR6dKfLhaNhf7EdcGwRS4yOP4LbtJAMg=" "mavros_extras";
  mavros_msgs = pkg "sha256-UgaE5d2H5/bzyJ2ENe1bc39LmmKCPhcAOnoTkGqrnII=" "mavros_msgs";
  test_mavros = pkg "sha256-c429GRDNt7+1RAoAI6xUbhLBnxlInIMr8mooW8bO0ZY=" "test_mavros";
}
