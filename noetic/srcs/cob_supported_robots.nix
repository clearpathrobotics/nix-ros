{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "cob_supported_robots";
    rev = "47757e5109d6272ccd331f86483165c9b29df13e";
    hash = "sha256-2NXFrVZ83lN1BawsFZZccraM4VWFW1MZxd+piwxDO5k=";
    name = "ipa320-cob_supported_robots-47757e5109d6272ccd331f86483165c9b29df13e";
  });
in
{
  cob_supported_robots = pkg "sha256-2NXFrVZ83lN1BawsFZZccraM4VWFW1MZxd+piwxDO5k=" ".";
}
