{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "CCNYRoboticsLab";
    repo = "scan_tools";
    rev = "e8bd9b126a850552903fc1da4e47df6b30de93a5";
    hash = "sha256-OMDYBC1eg5KVhb7zxvHgfZL53zCb+K4bNKNoRCWD3hY=";
    name = "CCNYRoboticsLab-scan_tools-e8bd9b126a850552903fc1da4e47df6b30de93a5";
  });
in
{
  laser_ortho_projector = pkg "sha256-V7Za4NM6FBoJWVAtWD70lGSiOkYJebfpkRsAzi/4Yi4=" "laser_ortho_projector";
  laser_scan_matcher = pkg "sha256-C0k1u8k/DJZrFdiER/4E32eM89q17euTfb08yl+8Q5g=" "laser_scan_matcher";
  laser_scan_sparsifier = pkg "sha256-ZlPQsfW2+9xFA9xEaak6OSQnAAz57RTyKezMjVL/UN0=" "laser_scan_sparsifier";
  laser_scan_splitter = pkg "sha256-f6tHTbi0RfnnhWtSJ9pHStElYS5HkBH/Csoz0BKs/2c=" "laser_scan_splitter";
  ncd_parser = pkg "sha256-rOvQtd9gUVqOGi10cNgMqfMDTWJp/ZomgJe0ldLjp1c=" "ncd_parser";
  polar_scan_matcher = pkg "sha256-Yp0SMPPD1m1o279HCJSTygOmAdVd+QDgf93Fg9Y+6gc=" "polar_scan_matcher";
  scan_to_cloud_converter = pkg "sha256-PbqPH8KR7i6Einlcettf0P73PN7E67K96puohcJPUn4=" "scan_to_cloud_converter";
  scan_tools = pkg "sha256-srfyjN+cxm9kXrXUE7QtjRqaF7Ehi8SQ0rmaa04TDZg=" "scan_tools";
}
