{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "sdformat_urdf";
    rev = "ddf83ed07e5fa5aeaea1aa2609ba3d2a03102f20";
    hash = "sha256-a4bZsffLFm5O6I3m8IBQ/wdXPAfS/EuXW+ckn8Zfh14=";
    name = "ros-sdformat_urdf-ddf83ed07e5fa5aeaea1aa2609ba3d2a03102f20";
  });
in
{
  sdformat_test_files = pkg "sha256-+3nL+Njboe0apHQrf0wM7r53YuOAoG8MjCOOoyhCG1c=" "sdformat_test_files";
  sdformat_urdf = pkg "sha256-PiEjmrYGfrptQKpgkl9IkcHfcnoBWTh14dQahClxIyk=" "sdformat_urdf";
}
