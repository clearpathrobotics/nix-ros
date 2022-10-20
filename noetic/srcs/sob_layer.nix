{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "dorezyuk";
    repo = "sob_layer";
    rev = "28b8ffa7f369bc7fa302ce92c558712f5ab9bccf";
    hash = "sha256-0Dr2tLIbyr8qTaLMoNo++NM9ZJcEkmYZR7E/x0b57sw=";
    name = "dorezyuk-sob_layer-28b8ffa7f369bc7fa302ce92c558712f5ab9bccf";
  });
in
{
  sob_layer = pkg "sha256-0Dr2tLIbyr8qTaLMoNo++NM9ZJcEkmYZR7E/x0b57sw=" ".";
}
