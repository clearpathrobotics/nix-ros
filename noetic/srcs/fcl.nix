{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "flexible-collision-library";
    repo = "fcl";
    rev = "df2702ca5e703dec98ebd725782ce13862e87fc8";
    hash = "sha256-6nRjSeyUcumoRx/NHAONzK9Exqrkc6NN4Ofa5MyDtDg=";
    name = "flexible-collision-library-fcl-df2702ca5e703dec98ebd725782ce13862e87fc8";
  });
in
{
  fcl = pkg "sha256-6nRjSeyUcumoRx/NHAONzK9Exqrkc6NN4Ofa5MyDtDg=" ".";
}
