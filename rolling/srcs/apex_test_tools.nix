{ pkgSrc, fetchFromGitLab }:
let
  pkg = pkgSrc (fetchFromGitLab {
    owner = "ApexAI";
    repo = "apex_test_tools";
    rev = "8e42ecdfdeb42675e27b7f07b9d992635f0af8a2";
    hash = "sha256-NpM+l4FIZ1MxqvIDOAftVK6WzxwyVxt4rs1BoEM/MXY=";
    name = "ApexAI-apex_test_tools-8e42ecdfdeb42675e27b7f07b9d992635f0af8a2";
  });
in
{
  apex_test_tools = pkg "sha256-vrX5LngYVt0Fxd0td4idUCVPg+j96W7S07zUG/lM8W4=" "apex_test_tools";
  test_apex_test_tools = pkg "sha256-ZB2lhFknuQ+9fA1s+tCKrhHEUOnSLF2ogSsE0tVMrjE=" "test_apex_test_tools";
}
