{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rosidl_core";
    rev = "020a782c73461ce7c7cf237fbfcbf5f3ba997da0";
    hash = "sha256-wFiAnvJqrK9Pgu2XweciQsmM1GIhsFUPEA2j8zGSwwE=";
    name = "ros2-rosidl_core-020a782c73461ce7c7cf237fbfcbf5f3ba997da0";
  });
in
{
  rosidl_core_generators = pkg "sha256-pTf4ex47Teh6zrv+Wmf3aw44qA64IWThnXl3J4RykQk=" "rosidl_core_generators";
  rosidl_core_runtime = pkg "sha256-WuLJ0hdRr4AaJpzLZ17d9cyU4KpKEQ33Z8Y63PEFDEw=" "rosidl_core_runtime";
}
