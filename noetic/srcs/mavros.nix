{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mavlink";
    repo = "mavros";
    rev = "0af02a552b7ea981a64aca2bd307ce56020ed4c2";
    hash = "sha256-IsV8kppHS6128n0URY4t5vzyOwhGw8cXOknF68vlqA4=";
    name = "mavlink-mavros-0af02a552b7ea981a64aca2bd307ce56020ed4c2";
  });
in
{
  libmavconn = pkg "sha256-ctkvJh42g0Ps6iLS3VMspiUHm6q6BJIZR65daIk2y9U=" "libmavconn";
  mavros = pkg "sha256-EX6tkOJul7DJvQAALsNSdJIcPN5vEHMlCoeMnS9r3Cg=" "mavros";
  mavros_extras = pkg "sha256-p/QGy7dnH/GYR6dKfLhaNhf7EdcGwRS4yOP4LbtJAMg=" "mavros_extras";
  mavros_msgs = pkg "sha256-UgaE5d2H5/bzyJ2ENe1bc39LmmKCPhcAOnoTkGqrnII=" "mavros_msgs";
  test_mavros = pkg "sha256-c429GRDNt7+1RAoAI6xUbhLBnxlInIMr8mooW8bO0ZY=" "test_mavros";
}
