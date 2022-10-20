{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ignition-release";
    repo = "ignition_math6_vendor";
    rev = "f964dd98dde22d4271c9c4d6c1104bde0130b593";
    hash = "sha256-8e4c9/rqvaWX2K3YG27pYhgZgHrw6+7H3fAhTeI5y20=";
    name = "ignition-release-ignition_math6_vendor-f964dd98dde22d4271c9c4d6c1104bde0130b593";
  });
in
{
  ignition_math6_vendor = pkg "sha256-8e4c9/rqvaWX2K3YG27pYhgZgHrw6+7H3fAhTeI5y20=" ".";
}
