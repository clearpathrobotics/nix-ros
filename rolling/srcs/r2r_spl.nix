{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-sports";
    repo = "r2r_spl";
    rev = "d2f224cd1077b6567c02111ee231ca809c8904b5";
    hash = "sha256-8cjKEg1Nwpx3A4n9Vd3QvgPVpNJSNY8RBNEZPpdLvNU=";
    name = "ros-sports-r2r_spl-d2f224cd1077b6567c02111ee231ca809c8904b5";
  });
in
{
  r2r_spl_7 = pkg "sha256-KqN+JK6GIZritk8/5cBigl1cu2sdMFz9nP3mrSQOsro=" "r2r_spl_7";
  splsm_7 = pkg "sha256-mJ9R0CRbOAigpJZL+lmcW5OrC4wfPc83FiMx8+NKjwY=" "splsm_7";
  splsm_7_conversion = pkg "sha256-hot8TlsdjVjgyVkdoUFaIy47vVP67OUYUwJHsdfSm0M=" "splsm_7_conversion";
}
