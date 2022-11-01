{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tilk";
    repo = "rtcm_msgs";
    rev = "6f58b42ffd17864ac638c33f1a37a752a4535721";
    hash = "sha256-OS64LPxm8f71/Ukv+fnW3cHjGY/2JgH1qpRRjACs/g8=";
    name = "tilk-rtcm_msgs-6f58b42ffd17864ac638c33f1a37a752a4535721";
  });
in
{
  rtcm_msgs = pkg "sha256-OS64LPxm8f71/Ukv+fnW3cHjGY/2JgH1qpRRjACs/g8=" ".";
}
