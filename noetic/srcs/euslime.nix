{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "jsk-ros-pkg";
    repo = "euslime";
    rev = "4edf652bce0626ad244ee7222e183e8415aa3971";
    hash = "sha256-o93HIGsTkPvOfn8wG1QJtymgtmRx1MtbIYmrleIolDc=";
    name = "jsk-ros-pkg-euslime-4edf652bce0626ad244ee7222e183e8415aa3971";
  });
in
{
  euslime = pkg "sha256-o93HIGsTkPvOfn8wG1QJtymgtmRx1MtbIYmrleIolDc=" ".";
}
