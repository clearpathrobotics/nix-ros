{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "facontidavide";
    repo = "plotjuggler_msgs";
    rev = "fda06b8455eee32dccde23cb1baaf90346517feb";
    hash = "sha256-1WF5HIed7RYSDO4nqETfCP13tg9d2rQluo23176/jYQ=";
    name = "facontidavide-plotjuggler_msgs-fda06b8455eee32dccde23cb1baaf90346517feb";
  });
in
{
  plotjuggler_msgs = pkg "sha256-1WF5HIed7RYSDO4nqETfCP13tg9d2rQluo23176/jYQ=" ".";
}
