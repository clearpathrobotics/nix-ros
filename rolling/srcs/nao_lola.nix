{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-sports";
    repo = "nao_lola";
    rev = "0fd9c77f787ecf9a5fa3e1ba3278fa596d419105";
    hash = "sha256-euJpJGOM1qLU5rk6DbW80VfEKRqkEuvU70As704cjkc=";
    name = "ros-sports-nao_lola-0fd9c77f787ecf9a5fa3e1ba3278fa596d419105";
  });
in
{
  nao_lola = pkg "sha256-euJpJGOM1qLU5rk6DbW80VfEKRqkEuvU70As704cjkc=" ".";
}
