{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stonier";
    repo = "ecl_core";
    rev = "7a5a3d475ee711ea3e5aeb0916dc6f443c652060";
    hash = "sha256-YHF9BVkt+2U4EYGjtUjB1/P/eM/l7XeDVrv7NA5Rt6M=";
    name = "stonier-ecl_core-7a5a3d475ee711ea3e5aeb0916dc6f443c652060";
  });
in
{
  ecl_command_line = pkg "sha256-mWUbZ23jx/WZvZMrSPQHa60ZS5iM/xzA00Ab1fLkPQU=" "ecl_command_line";
  ecl_concepts = pkg "sha256-wk2UHh5BH/Vle6y1yZcZE9zxIT2xIIOrq6jcB81davw=" "ecl_concepts";
  ecl_containers = pkg "sha256-4ZDdM9dt79EVqnwg6EYSvYLdh0T/kQmWRkX4mrxlkjs=" "ecl_containers";
  ecl_converters = pkg "sha256-YG40yYa5L3XSQQRSrMXbvIaTYLqF0s9vumlTjcqX9Tg=" "ecl_converters";
  ecl_core = pkg "sha256-XotnWbFt8a8TR03+JLe1W7yViXPfqhmRTy7Mw5/ZdeU=" "ecl_core";
  ecl_core_apps = pkg "sha256-0qCkBbkIJWOGRDp3q3HWHkGu+tYpejSNYb5bqabeP6Q=" "ecl_core_apps";
  ecl_devices = pkg "sha256-NH85W4xb0AnWCI24EUB3RqkIfA7P+9mZi4869Y5FtX0=" "ecl_devices";
  ecl_eigen = pkg "sha256-IcAHomoG5Q8sIg2ip+dpCMkjT6NQy4UnP8Dqkj83YgY=" "ecl_eigen";
  ecl_exceptions = pkg "sha256-cRYtt62yUkboclp7HFDslz37y5Aqn7TIxhgMq4HhhQg=" "ecl_exceptions";
  ecl_filesystem = pkg "sha256-1fs/qkUaMxD+/g0QXdHs52UUD3Ka9jLF558NGccUTEw=" "ecl_filesystem";
  ecl_formatters = pkg "sha256-IXMgAJ+zluNnJZiGm0mupGImgt090hkH6PIDUpW/V7E=" "ecl_formatters";
  ecl_geometry = pkg "sha256-EeJaMJb6R1FMXRHMIXEpnwLCLoBrNp2egWZYmtZTf2w=" "ecl_geometry";
  ecl_ipc = pkg "sha256-Hvl/b0qZR8VGDnV6sExmpbh7tbAWKSQFrrbKC7UjV20=" "ecl_ipc";
  ecl_linear_algebra = pkg "sha256-S4KXBNoNJmVqbC3mhk4lgOsS5rEMkS+vPAlmFPNB5Vk=" "ecl_linear_algebra";
  ecl_math = pkg "sha256-Y10jOsyQXQ9ZmOZUAMD/m0TY1g+bk5t5jA9HaNk5M+I=" "ecl_math";
  ecl_mpl = pkg "sha256-Dx2INyv3EyGok7KtSlW7R5as4DyYCZl5z7dwXm/mm64=" "ecl_mpl";
  ecl_sigslots = pkg "sha256-gr3qkhHHx/ASth3AGJW9LPs+0rTo/JC1zOaMx7phhVg=" "ecl_sigslots";
  ecl_statistics = pkg "sha256-/JeGTHufY74K7nMDpE4Ne3sKxn9ERWh8CvBE6EQRVSg=" "ecl_statistics";
  ecl_streams = pkg "sha256-Tw+IGR+9xAevqH0SkRsotrK5NQLewJ5uuBk+UsuVtZc=" "ecl_streams";
  ecl_threads = pkg "sha256-FkptCzZdD8z6lHaY0POzIzOCLsH2lpYM7JFCQUSQc0c=" "ecl_threads";
  ecl_time = pkg "sha256-7p4qF9rgBW5ndWJVZudwk5zeMf+nO7R0rVIjuR+Um70=" "ecl_time";
  ecl_type_traits = pkg "sha256-fP31mw+uQYWLefpEDwnbDD5GcsHLZ9a54bGacisjPPc=" "ecl_type_traits";
  ecl_utilities = pkg "sha256-QjEnZ0z41QqU/ZUOmc/S0PtBIQgx+LPmDr76CVE70F0=" "ecl_utilities";
}
