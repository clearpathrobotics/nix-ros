{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "at-wat";
    repo = "mcl_3dl_msgs";
    rev = "c58f2a5d937c4b42d4c4704e6dd19df192a8200a";
    hash = "sha256-InXTkKWAM4m9Qu55hTQuDzH3ZrB6kiYU5Ln2HuU00qc=";
    name = "at-wat-mcl_3dl_msgs-c58f2a5d937c4b42d4c4704e6dd19df192a8200a";
  });
in
{
  mcl_3dl_msgs = pkg "sha256-InXTkKWAM4m9Qu55hTQuDzH3ZrB6kiYU5Ln2HuU00qc=" ".";
}
