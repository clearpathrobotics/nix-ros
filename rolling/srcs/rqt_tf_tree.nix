{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_tf_tree";
    rev = "871a6fa4e343c53b6befe6dffd04261d855033a3";
    hash = "sha256-lSihCkueyTt2JXyG3jG9jZwxU5/m1zSimSfNldkQjiM=";
    name = "ros-visualization-rqt_tf_tree-871a6fa4e343c53b6befe6dffd04261d855033a3";
  });
in
{
  rqt_tf_tree = pkg "sha256-lSihCkueyTt2JXyG3jG9jZwxU5/m1zSimSfNldkQjiM=" ".";
}
