{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "canlab-co";
    repo = "clpe_ros_msgs";
    rev = "7df107e904c07f3d325eeab7b07edf52cc399b33";
    hash = "sha256-agDzkIxGixmIEr5fojkmhNNu9riIN6PC6bewWCty08U=";
    name = "canlab-co-clpe_ros_msgs-7df107e904c07f3d325eeab7b07edf52cc399b33";
  });
in
{
  clpe_ros_msgs = pkg "sha256-agDzkIxGixmIEr5fojkmhNNu9riIN6PC6bewWCty08U=" ".";
}
