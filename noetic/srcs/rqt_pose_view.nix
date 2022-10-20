{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_pose_view";
    rev = "2c97053c3accbbaea97e107d729e1986a1acabf2";
    hash = "sha256-nhe38pG4sDSewXSjhJ/ZlRUF1gRYwgo0NfUc+7g/oS8=";
    name = "ros-visualization-rqt_pose_view-2c97053c3accbbaea97e107d729e1986a1acabf2";
  });
in
{
  rqt_pose_view = pkg "sha256-nhe38pG4sDSewXSjhJ/ZlRUF1gRYwgo0NfUc+7g/oS8=" ".";
}
