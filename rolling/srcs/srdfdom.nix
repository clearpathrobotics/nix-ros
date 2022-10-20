{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "srdfdom";
    rev = "91d7db8b28d64008145a7281febd08c2f59a0fe8";
    hash = "sha256-OxNYNwjJEZVyV6gP05YeX2TkWa+3EU+i6eU9NNsI5FQ=";
    name = "ros-planning-srdfdom-91d7db8b28d64008145a7281febd08c2f59a0fe8";
  });
in
{
  srdfdom = pkg "sha256-OxNYNwjJEZVyV6gP05YeX2TkWa+3EU+i6eU9NNsI5FQ=" ".";
}
