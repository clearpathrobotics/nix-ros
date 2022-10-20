{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rmw";
    rev = "b635eec56ab3841965f2c1db39e0143d51304c79";
    hash = "sha256-WYnX0ZJ1lhvnPFhxqFyuetz63jAyLNN3FNQy2ER4uuA=";
    name = "ros2-rmw-b635eec56ab3841965f2c1db39e0143d51304c79";
  });
in
{
  rmw = pkg "sha256-Q4/oZ5pIkA3Z25QNR/bJ+A1XlTUdYCZJFlusmJsmlng=" "rmw";
  rmw_implementation_cmake = pkg "sha256-4+wL6K9GCBv1Fxb0aTqLz4oIVBsmJmRuInjMFcjpSPQ=" "rmw_implementation_cmake";
}
