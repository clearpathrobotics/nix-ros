{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "LeoRover";
    repo = "leo_robot";
    rev = "67bb186f7484a217242cd673441679fc027bc558";
    hash = "sha256-FH+yEETaG+jPcxnxYzhJwdEoMvICJpblvTZ06f8npnc=";
    name = "LeoRover-leo_robot-67bb186f7484a217242cd673441679fc027bc558";
  });
in
{
  leo_bringup = pkg "sha256-a+L7y3WJAZ1YZjEuR+3RjM1s6+la6NvgtHYhaOLm6ug=" "leo_bringup";
  leo_fw = pkg "sha256-WbWMMP5u+CBYtSRil5nwAWLGRjpNqqboCQpDeAnOxLg=" "leo_fw";
  leo_robot = pkg "sha256-Of6XLuZAhBM+v67/GpbLyk9i6YfmfxsjzI8rqiQak64=" "leo_robot";
}
