{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "alireza-hosseini";
    repo = "ipcamera_driver";
    rev = "b8d2aa266871b24cccf412ba03a50a8b4f337500";
    hash = "sha256-cML8W3DmAgzP8Rg5v9Memk6q76yneS6CwRGrO7jfjxw=";
    name = "alireza-hosseini-ipcamera_driver-b8d2aa266871b24cccf412ba03a50a8b4f337500";
  });
in
{
  ipcamera_driver = pkg "sha256-cML8W3DmAgzP8Rg5v9Memk6q76yneS6CwRGrO7jfjxw=" ".";
}
