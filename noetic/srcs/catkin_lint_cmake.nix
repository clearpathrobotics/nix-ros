{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tue-robotics";
    repo = "catkin_lint_cmake";
    rev = "074604a93fc6013b09ca7fbd128253a2c7f6746b";
    hash = "sha256-oeufu2dFU0dz6E+pHt8QNxXXR0k9p3YXbjDHfEtGJ8M=";
    name = "tue-robotics-catkin_lint_cmake-074604a93fc6013b09ca7fbd128253a2c7f6746b";
  });
in
{
  catkin_lint_cmake = pkg "sha256-oeufu2dFU0dz6E+pHt8QNxXXR0k9p3YXbjDHfEtGJ8M=" ".";
}
