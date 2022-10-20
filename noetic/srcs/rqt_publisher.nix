{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_publisher";
    rev = "94fe2e66ce791c265204b437e7990bb68f5ae343";
    hash = "sha256-gOZtfI+kW30ufbGmz4uEJ5OBrrnmzhJ8ko7QhG6DhZE=";
    name = "ros-visualization-rqt_publisher-94fe2e66ce791c265204b437e7990bb68f5ae343";
  });
in
{
  rqt_publisher = pkg "sha256-gOZtfI+kW30ufbGmz4uEJ5OBrrnmzhJ8ko7QhG6DhZE=" ".";
}
