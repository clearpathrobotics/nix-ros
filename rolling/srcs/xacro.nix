{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "xacro";
    rev = "b8716fc1b72c13c8f9799ccd3a6d4f840dca4097";
    hash = "sha256-i5XJjhiwsWhFR0iP3Mw8EdFp9CRAdhCdQDlcdfrMkK0=";
    name = "ros-xacro-b8716fc1b72c13c8f9799ccd3a6d4f840dca4097";
  });
in
{
  xacro = pkg "sha256-i5XJjhiwsWhFR0iP3Mw8EdFp9CRAdhCdQDlcdfrMkK0=" ".";
}
