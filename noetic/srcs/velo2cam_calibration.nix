{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "beltransen";
    repo = "velo2cam_calibration";
    rev = "bfba57837e1efd979f8514512756b450f921e2aa";
    hash = "sha256-SiajeuCmcs3uDGf8zQAI1BesWk/D8MuE4J1RbHxsF3E=";
    name = "beltransen-velo2cam_calibration-bfba57837e1efd979f8514512756b450f921e2aa";
  });
in
{
  velo2cam_calibration = pkg "sha256-SiajeuCmcs3uDGf8zQAI1BesWk/D8MuE4J1RbHxsF3E=" ".";
}
