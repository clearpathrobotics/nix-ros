{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "dingo-cpr";
    repo = "dingo_desktop";
    rev = "86f9ff4130dbe4a6cc44b4c58c64fa94279d9f86";
    hash = "sha256-Gwo/P7jmZzYs8ZlwEwHLtHdtQHlt7cGrSa2N/rDhhvo=";
    name = "dingo-cpr-dingo_desktop-86f9ff4130dbe4a6cc44b4c58c64fa94279d9f86";
  });
in
{
  dingo_desktop = pkg "sha256-UtgVZk/UDKZeonQdcXZ80qGaiA/GxqKljiYb/7vs4G0=" "dingo_desktop";
  dingo_viz = pkg "sha256-tdgk6t9gmVhm3UPA3SRDKmvQTeaaP3Dxij3slZdRbHg=" "dingo_viz";
}
