{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "strands-project";
    repo = "mongodb_store";
    rev = "0ab1a5d65bd84b7b7eacc2b12aba8222345c6d6d";
    hash = "sha256-slmkUKMLpSyejmwF1IpEvC3L6dUki6X1+vHFsAe/mWc=";
    name = "strands-project-mongodb_store-0ab1a5d65bd84b7b7eacc2b12aba8222345c6d6d";
  });
in
{
  mongodb_log = pkg "sha256-cZ/XWiyyPvvH9cE2yUKHtpLOLXuWr4gRaNxeOoZbnJk=" "mongodb_log";
  mongodb_store = pkg "sha256-dq6kNkmorNUnuxfDrtvPDE9DzR81H1BWP576WIW81YA=" "mongodb_store";
  mongodb_store_msgs = pkg "sha256-qTOwaiL4j1OAGXSL+EV+djhaD8ga/6Q72IJO4l+wlpE=" "mongodb_store_msgs";
}
