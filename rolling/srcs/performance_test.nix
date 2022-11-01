{ pkgSrc, fetchFromGitLab }:
let
  pkg = pkgSrc (fetchFromGitLab {
    owner = "ApexAI";
    repo = "performance_test";
    rev = "9e2a1dc651af51e86feee219b36c8005baf2c17d";
    hash = "sha256-+JGHnZ7XmbCIRVUQbBPwmaFqho2C9QPBDv6N+Bq3UsY=";
    name = "ApexAI-performance_test-9e2a1dc651af51e86feee219b36c8005baf2c17d";
  });
in
{
  performance_report = pkg "sha256-9OCLeOFZ3IGPweP4SzWsbzA/cLv2iQ213Mlqza4H/RA=" "performance_report";
  performance_test = pkg "sha256-RdOEh86qB8TJ57K+xB43ysevnl+CLTWAH3PHqvO10qk=" "performance_test";
}
