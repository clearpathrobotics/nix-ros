{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "CLOBOT-Co-Ltd";
    repo = "clober_msgs";
    rev = "f998cdcf5d0199fd30ed74d90c8d1b0fdc5fdcef";
    hash = "sha256-REdePBJWWzk/NsBm5x/jWPw44zQ+VyVW/g0OJ6fB618=";
    name = "CLOBOT-Co-Ltd-clober_msgs-f998cdcf5d0199fd30ed74d90c8d1b0fdc5fdcef";
  });
in
{
  clober_msgs = pkg "sha256-REdePBJWWzk/NsBm5x/jWPw44zQ+VyVW/g0OJ6fB618=" ".";
}
