{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stonier";
    repo = "ecl_tools";
    rev = "1a6d9498f13fb3820edf5b79f2c65d3dffa05d53";
    hash = "sha256-/juBrhTwkhPx5d9mOk1wrQ9l30//74uJ1RvkPvjS60k=";
    name = "stonier-ecl_tools-1a6d9498f13fb3820edf5b79f2c65d3dffa05d53";
  });
in
{
  ecl_build = pkg "sha256-ttmcSFmWhB7bERQkup3ucja+EU9tIc4Sb4cVetuSS00=" "ecl_build";
  ecl_license = pkg "sha256-7IkZyQJw9go1s2je+YLPGemSTMtC8PNA66qCC6akU6w=" "ecl_license";
  ecl_tools = pkg "sha256-z/lKRKqVLxiSJ9nSnQyQh/Dsk/+USiDw68+Nfg9Fc0U=" "ecl_tools";
}
