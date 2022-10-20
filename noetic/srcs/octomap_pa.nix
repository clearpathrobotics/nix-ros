{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "TUC-ProAut";
    repo = "ros_octomap";
    rev = "882b8aabef3d40fd9534e116f885125ea335aa28";
    hash = "sha256-zAtsHp3OoFn4pfvdrLtyPRXkYOs2UD30M8UoBlzYMFY=";
    name = "TUC-ProAut-ros_octomap-882b8aabef3d40fd9534e116f885125ea335aa28";
  });
in
{
  octomap_pa = pkg "sha256-XbD7KN97V3owf02bXcxdedGCdy7zPns5m76rpHywGEE=" "octomap_pa";
  octomap_pa_matlab = pkg "sha256-caMryNHoIOEjj3sGUsWBCRRUVNha0WEu08ujnvRdiqo=" "octomap_pa_matlab";
  octomap_pa_msgs = pkg "sha256-vWxEXk5lzTv5FJYikvQTOtHJm/A0t3L70vwYDX00FGM=" "octomap_pa_msgs";
}
