{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "libyaml_vendor";
    rev = "9e14d58ce2198933f97a91adf2af31d788ae59aa";
    hash = "sha256-cs4W6NQGbAnL9zgIzA3N48dAFWIf41N6sBlGyFEunYI=";
    name = "ros2-libyaml_vendor-9e14d58ce2198933f97a91adf2af31d788ae59aa";
  });
in
{
  libyaml_vendor = pkg "sha256-cs4W6NQGbAnL9zgIzA3N48dAFWIf41N6sBlGyFEunYI=" ".";
}
