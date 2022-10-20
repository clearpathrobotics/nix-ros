{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "uos";
    repo = "sick_tim";
    rev = "51d19dada7f20c006488b95b4ecb0392a981300b";
    hash = "sha256-ekMYrOCv5c8T7OrQwxL0cw87BgqioQSSkwNgsEurxLE=";
    name = "uos-sick_tim-51d19dada7f20c006488b95b4ecb0392a981300b";
  });
in
{
  sick_tim = pkg "sha256-ekMYrOCv5c8T7OrQwxL0cw87BgqioQSSkwNgsEurxLE=" ".";
}
