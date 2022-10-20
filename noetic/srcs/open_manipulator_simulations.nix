{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ROBOTIS-GIT";
    repo = "open_manipulator_simulations";
    rev = "088db0cfae27d07826279ddb1a8932a497002795";
    hash = "sha256-vI4e69bWy76ho0N47uyGmuYfwC53yTSbIJGVYmwlcQk=";
    name = "ROBOTIS-GIT-open_manipulator_simulations-088db0cfae27d07826279ddb1a8932a497002795";
  });
in
{
  open_manipulator_gazebo = pkg "sha256-TjGn/NRIPgsqSzRDKpDM442Rh3BXCZpXMLh8okFQ4Aw=" "open_manipulator_gazebo";
  open_manipulator_simulations = pkg "sha256-dEU/Wh4/QLKuNO021QrKq84LsVjjFxG+HkkEUXQexFw=" "open_manipulator_simulations";
}
