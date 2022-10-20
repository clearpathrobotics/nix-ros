{ pkgSrc, fetchFromGitLab }:
let
  pkg = pkgSrc (fetchFromGitLab {
    owner = "ros-tracing";
    repo = "tracetools_analysis";
    rev = "9c853b27fc380d763317ce786f0588007db8f33b";
    hash = "sha256-p1yg+MwIr4+E1Z+FcbjsD0x1T/1mOBNASMsDkPsCqTc=";
    name = "ros-tracing-tracetools_analysis-9c853b27fc380d763317ce786f0588007db8f33b";
  });
in
{
  ros2trace_analysis = pkg "sha256-0r8vCmRmjzDSX3F0r7KeGXfsubL/NFar+qp+Vmnm6v4=" "ros2trace_analysis";
  tracetools_analysis = pkg "sha256-0Zq6Q+KpAqO9tyKH4Kyk3U4cVnIcdb8QAjijphLUKmY=" "tracetools_analysis";
}
