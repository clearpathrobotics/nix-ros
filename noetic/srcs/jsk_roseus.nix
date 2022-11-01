{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "jsk-ros-pkg";
    repo = "jsk_roseus";
    rev = "3cff147eb9c244c81cf8895739bfa0770a018b9f";
    hash = "sha256-iIDplXJBRK1Sd0gEX69WcOJuzotXY11sGdTN6tfEz78=";
    name = "jsk-ros-pkg-jsk_roseus-3cff147eb9c244c81cf8895739bfa0770a018b9f";
  });
in
{
  jsk_roseus = pkg "sha256-q4M4SBFhasEM2xtFbfn72f0IsMLGa2pbOPW/R3MyFfU=" "jsk_roseus";
  roseus = pkg "sha256-NtU8wS6P4IYUa2+HpJFFQ69YLKCkEHhp7xv39YjS+qc=" "roseus";
  roseus_mongo = pkg "sha256-1lXnuV9RgzhjUprXk9wz7pAxNs0ncbB70TJxoMhc2eU=" "roseus_mongo";
  roseus_smach = pkg "sha256-Rthod/k2KMzjSUy3RmVSdU7KHgG2NXcj0nioo0o08Fk=" "roseus_smach";
  roseus_tutorials = pkg "sha256-8jfabg4Q2XKnhxD0IEOQANJ4xInm9GUX8cDrtwm625w=" "roseus_tutorials";
}
