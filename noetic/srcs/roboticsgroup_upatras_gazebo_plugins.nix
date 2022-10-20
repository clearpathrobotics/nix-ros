{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "roboticsgroup";
    repo = "roboticsgroup_upatras_gazebo_plugins";
    rev = "15187abc17f22dbd3fa720d70ad50de74a668b7c";
    hash = "sha256-J92fpCHLM/Juh5QKSHOObGVQoQPkI9h5fOfGouH2BMI=";
    name = "roboticsgroup-roboticsgroup_upatras_gazebo_plugins-15187abc17f22dbd3fa720d70ad50de74a668b7c";
  });
in
{
  roboticsgroup_upatras_gazebo_plugins = pkg "sha256-J92fpCHLM/Juh5QKSHOObGVQoQPkI9h5fOfGouH2BMI=" ".";
}
