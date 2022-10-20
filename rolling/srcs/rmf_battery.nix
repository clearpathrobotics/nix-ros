{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "open-rmf";
    repo = "rmf_battery";
    rev = "4f59488c304f2b555623341004e663155e52b17f";
    hash = "sha256-yVjSKQdZIU9qoexRqq6JUm2pNqQtY/EwcAV551vmm9o=";
    name = "open-rmf-rmf_battery-4f59488c304f2b555623341004e663155e52b17f";
  });
in
{
  rmf_battery = pkg "sha256-oGw9NxbR7XnmDLwVkWHPmJHRVwOZtCV59cLWq56hrUA=" "rmf_battery";
}
