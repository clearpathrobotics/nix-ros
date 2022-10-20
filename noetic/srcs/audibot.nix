{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "robustify";
    repo = "audibot";
    rev = "ec420869a50ba7a8bce623ad274622af67403d6b";
    hash = "sha256-bBHBfHUs7tU/ygnnfYqRUlXws2nIJueqaMw1qh/9joQ=";
    name = "robustify-audibot-ec420869a50ba7a8bce623ad274622af67403d6b";
  });
in
{
  audibot = pkg "sha256-fmyyDUhQzIPOu/OlL0TfLpH2qPlo2AXupkoSPtB5ITU=" "audibot";
  audibot_description = pkg "sha256-Oo88l5+BfA3xp+1su2C1p/hwXBnYcAXBTJt4ncEkieA=" "audibot_description";
  audibot_gazebo = pkg "sha256-kqtsJliTHNHMEQAkIodCoybaH6V+g8c/o15COdew4zY=" "audibot_gazebo";
}
