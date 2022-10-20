{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "cob_environments";
    rev = "13a00d6a3e7d69d6fb05f0d51c360f0384bbdf8b";
    hash = "sha256-JJbzGT3MJkTajC4T7Ziwptm3k2KGJpJa2Ti5aom7gX0=";
    name = "ipa320-cob_environments-13a00d6a3e7d69d6fb05f0d51c360f0384bbdf8b";
  });
in
{
  cob_default_env_config = pkg "sha256-N01Oy7Me/3pJ5/zmjpN/Q16Bulctg9/C6aQya4oQA7k=" "cob_default_env_config";
  cob_environments = pkg "sha256-gRBKpUiT1RWHji/bzUwFSqDeiuC8YS1FG0ocmBtCiBA=" "cob_environments";
}
