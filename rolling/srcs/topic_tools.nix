{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-tooling";
    repo = "topic_tools";
    rev = "cdb7a80b57a74b10ac24ea21c78377c3b017fe38";
    hash = "sha256-TDeJn07T4rwBLTM+HslVjQA5vQmc40Kln9CG2dbyTDY=";
    name = "ros-tooling-topic_tools-cdb7a80b57a74b10ac24ea21c78377c3b017fe38";
  });
in
{
  topic_tools = pkg "sha256-/gZjlRJLsXz2qfaD9INDSCq30gxvS3f4oOVOE0VdrJI=" "topic_tools";
  topic_tools_interfaces = pkg "sha256-jgnfd+kmIaH/wQmVa5MUEaJ9j+SDBphMz9LbGAr2uIA=" "topic_tools_interfaces";
}
