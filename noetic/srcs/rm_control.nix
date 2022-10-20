{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "rm-controls";
    repo = "rm_control";
    rev = "0cd09030ec6cbbb6467d5f16296bb96fe3543446";
    hash = "sha256-s/Ny1iu5cuGOnuWRpmvqN4eyYFpj8j0o3sNdXNDqzhQ=";
    name = "rm-controls-rm_control-0cd09030ec6cbbb6467d5f16296bb96fe3543446";
  });
in
{
  rm_common = pkg "sha256-hh4G/AprYkG6EuXj+yQ4SkQQLoiVItoa6XIFHTshfqE=" "rm_common";
  rm_control = pkg "sha256-mdY1hW+0QDnEsKa5by5baxvAAK6jde3xHAy1dARpBTc=" "rm_control";
  rm_dbus = pkg "sha256-aHt0cFzAkg5bwLnSZW1Eky6/VgI20XGfWqs9Vs8OXk8=" "rm_dbus";
  rm_gazebo = pkg "sha256-qYx5lFeWg+G/XVpEcT/9lHQmc3cVrkGlmeExm5Gur+I=" "rm_gazebo";
  rm_hw = pkg "sha256-d+g5nlsVHw6lEUrJJHoQT5lI8KvmbB4oW2tWDcYa8JE=" "rm_hw";
  rm_msgs = pkg "sha256-3Nr916+mb3+zzeh4rE3tY4RIXRJX+vxxwyEvhTrnluU=" "rm_msgs";
  rm_referee = pkg "sha256-4Qn1wm+Wbr/RXJJ62Ic2IdHSGvW2QR1zY53omOVWvoM=" "rm_referee";
}
