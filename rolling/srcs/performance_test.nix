{ pkgSrc, fetchFromGitLab }:
let
  pkg = pkgSrc (fetchFromGitLab {
    owner = "ApexAI";
    repo = "performance_test";
    rev = "d69a0d72e26c98f4513642ab607ce0cfad274f34";
    hash = "sha256-Hg6G/1t6oldVk8SgGoeW5+E9p4KZp2WtHXbyOxusG6Q=";
    name = "ApexAI-performance_test-d69a0d72e26c98f4513642ab607ce0cfad274f34";
  });
in
{
  performance_report = pkg "sha256-9OCLeOFZ3IGPweP4SzWsbzA/cLv2iQ213Mlqza4H/RA=" "performance_report";
  performance_test = pkg "sha256-RdOEh86qB8TJ57K+xB43ysevnl+CLTWAH3PHqvO10qk=" "performance_test";
}
