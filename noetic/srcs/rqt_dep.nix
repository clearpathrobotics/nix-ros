{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_dep";
    rev = "3b1edd7eeff9da68aa070038d26d592eaebdaaf1";
    hash = "sha256-WrKIIUPMra+0Ex638/QhRqYjE1DkW8RE9JpYiDZN37o=";
    name = "ros-visualization-rqt_dep-3b1edd7eeff9da68aa070038d26d592eaebdaaf1";
  });
in
{
  rqt_dep = pkg "sha256-WrKIIUPMra+0Ex638/QhRqYjE1DkW8RE9JpYiDZN37o=" ".";
}
