{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "roboception";
    repo = "rc_common_msgs";
    rev = "d2a5f2105633c0f6ee91801005e47e8b87200a91";
    hash = "sha256-t/k4z+tsXR65mup4wNKyY/8LNxexUi/iD4e4elfQM+s=";
    name = "roboception-rc_common_msgs-d2a5f2105633c0f6ee91801005e47e8b87200a91";
  });
in
{
  rc_common_msgs = pkg "sha256-t/k4z+tsXR65mup4wNKyY/8LNxexUi/iD4e4elfQM+s=" ".";
}
