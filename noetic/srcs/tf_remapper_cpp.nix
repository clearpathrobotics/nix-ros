{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tradr-project";
    repo = "tf_remapper_cpp";
    rev = "59eca1c1592ed38f6f042cd258d5f5fc5a6e683f";
    hash = "sha256-EI/GD17s427RL3jMEulu5BofhMrYkstHHN01mEbpmZ0=";
    name = "tradr-project-tf_remapper_cpp-59eca1c1592ed38f6f042cd258d5f5fc5a6e683f";
  });
in
{
  tf_remapper_cpp = pkg "sha256-EI/GD17s427RL3jMEulu5BofhMrYkstHHN01mEbpmZ0=" ".";
}
