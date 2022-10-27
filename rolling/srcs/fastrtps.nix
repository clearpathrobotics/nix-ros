{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "eProsima";
    repo = "Fast-DDS";
    rev = "ffd4739d681a977079df501787dea857ca7311a0";
    hash = "sha256-qR1D991ZofYV4jsyKql2Ik88ZuTLgnQmtT8I+bOuBaU=";
    name = "eProsima-Fast-DDS-ffd4739d681a977079df501787dea857ca7311a0";
  });
in
{
  fastrtps = pkg "sha256-qR1D991ZofYV4jsyKql2Ik88ZuTLgnQmtT8I+bOuBaU=" ".";
}
