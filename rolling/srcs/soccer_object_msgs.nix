{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ijnek";
    repo = "soccer_object_msgs";
    rev = "b8afa13c6e00836dceda00322593d81802bd3dda";
    hash = "sha256-osJgWvej6UcU+BYi2uVgk/0T+Llr1DrpMYyN7Ct91oc=";
    name = "ijnek-soccer_object_msgs-b8afa13c6e00836dceda00322593d81802bd3dda";
  });
in
{
  soccer_object_msgs = pkg "sha256-osJgWvej6UcU+BYi2uVgk/0T+Llr1DrpMYyN7Ct91oc=" ".";
}
