{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "flynneva";
    repo = "floam";
    rev = "b55f27ab3a446e0bdb8cfa827ad858052c0142d3";
    hash = "sha256-SA+takXbqkSJibyAiw43/eYnsDSb2bN9Lid7Wn87OtU=";
    name = "flynneva-floam-b55f27ab3a446e0bdb8cfa827ad858052c0142d3";
  });
in
{
  floam = pkg "sha256-SA+takXbqkSJibyAiw43/eYnsDSb2bN9Lid7Wn87OtU=" ".";
}
