{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "libuvc_ros";
    rev = "ca856a7a2aaf7a2aa9dc5b24a51b8c5ee58a7d37";
    hash = "sha256-dxIvM2PCsTzDJquYXTQomtb5y1H6D3spOT3LMImufvo=";
    name = "ros-drivers-libuvc_ros-ca856a7a2aaf7a2aa9dc5b24a51b8c5ee58a7d37";
  });
in
{
  libuvc_camera = pkg "sha256-MhpnBPbU4cCd5UcRnNhfX6zYxgb1Ji3cHZjTKUmpsTI=" "libuvc_camera";
  libuvc_ros = pkg "sha256-+VLUKncrHQ1v4JxMM672o3c/D2dKkJAMeuJcbNw0xzA=" "libuvc_ros";
}
