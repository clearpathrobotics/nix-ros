{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "LeoRover";
    repo = "leo_examples";
    rev = "d5d81b4765bcacc01bc1cd0c71fcb39d7aa5d71e";
    hash = "sha256-7QE27ooei+20u3Y5AktUbYcb/xbCKaGVpPe5GbvBJM0=";
    name = "LeoRover-leo_examples-d5d81b4765bcacc01bc1cd0c71fcb39d7aa5d71e";
  });
in
{
  leo_example_follow_ar_tag = pkg "sha256-rT55OLYddjnOGb+Bh4HcPLk6A48v+A+YnTMzsA8nXsE=" "leo_example_follow_ar_tag";
  leo_example_line_follower = pkg "sha256-2KRgwDHuT6zS72C8vAlSxs8a6ZnIJpri4SDV+qIxQfI=" "leo_example_line_follower";
  leo_example_object_detection = pkg "sha256-dIF/NeHmdX5nysk9hSFdwWvQO723c6gaLzNQL9ws0Do=" "leo_example_object_detection";
  leo_examples = pkg "sha256-kf46k97m4UKYFQPl7K9bIqL7yWfdzIMPvDiO8yhrWVo=" "leo_examples";
}
