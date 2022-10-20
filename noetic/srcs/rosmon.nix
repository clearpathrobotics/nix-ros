{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "xqms";
    repo = "rosmon";
    rev = "dba69094bb0064e73ac67e96313c75b41cb2aaa4";
    hash = "sha256-tM/SkSzFflrWmJIdgJGFmL+71oWy9IqIGUeCQVJx9DY=";
    name = "xqms-rosmon-dba69094bb0064e73ac67e96313c75b41cb2aaa4";
  });
in
{
  rosmon = pkg "sha256-GilM0u1nko6QpJbI2gf/2uTjlKbu+tP5RbWiuNFc/Cs=" "rosmon";
  rosmon_core = pkg "sha256-Alfu3PJohbopgiLwwHUmJkr72sA6e8GY//qSVpbs+mk=" "rosmon_core";
  rosmon_msgs = pkg "sha256-ji5AQomjE0pDCewcPXS90YPgB16EaNbfEBLDdSx+B1I=" "rosmon_msgs";
  rqt_rosmon = pkg "sha256-MtQbMc9qsOOZSyNO8sDq3Xl6yHnt/EiV+5wwP6L8Dvs=" "rqt_rosmon";
}
