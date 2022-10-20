{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stonier";
    repo = "ecl_lite";
    rev = "f9b8aa04c97ea332ae8ea7e052a31f7ec2670c9a";
    hash = "sha256-DabtWU07sYIAM6I5yzW6b4nzwIkOB6vyW62x7x8JfxM=";
    name = "stonier-ecl_lite-f9b8aa04c97ea332ae8ea7e052a31f7ec2670c9a";
  });
in
{
  ecl_config = pkg "sha256-X40Wcz5RTeeCKhZia5d+xvdg6xM7uZwoxC3VYp2UCcg=" "ecl_config";
  ecl_console = pkg "sha256-w1XZlDsjZDQ0MPDG+dhU0mD3KZjRt4yslxJCP5RHeTE=" "ecl_console";
  ecl_converters_lite = pkg "sha256-a8sm73bxxx6IYDP6tv76IbjyUHSAzx6QreCCBMQUePE=" "ecl_converters_lite";
  ecl_errors = pkg "sha256-tMZvRB3bre8Dk+0YS+OqnkCGKff09J6PKWHytWxelmk=" "ecl_errors";
  ecl_io = pkg "sha256-I434FhFkRvH1CxPDYASTtfmyT/mK0OLoVA+VPEiSa24=" "ecl_io";
  ecl_lite = pkg "sha256-pfGGGa3tTMW+9VEsHT0ofv7mnz478eGmJA10PjrEvJI=" "ecl_lite";
  ecl_sigslots_lite = pkg "sha256-nGYQQNr6VnsCIPQoCQfLmIxpw1uEBrqSu1PjF4XPSxk=" "ecl_sigslots_lite";
  ecl_time_lite = pkg "sha256-Vq/Jjdy8d6B4vftg7aRE6FbZregGn+emjj9NO/ONdGU=" "ecl_time_lite";
}
