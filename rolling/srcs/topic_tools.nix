{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-tooling";
    repo = "topic_tools";
    rev = "0b27263353698903f2d533166d5b484a5fe673ab";
    hash = "sha256-vKiejeGbsDlNTchgzvowDyJowQSibgA1hBvAd+NK/sA=";
    name = "ros-tooling-topic_tools-0b27263353698903f2d533166d5b484a5fe673ab";
  });
in
{
  topic_tools = pkg "sha256-hHmt127EWTiddas8dQdnmhp4xEodu4M666j4JZuAA/A=" "topic_tools";
  topic_tools_interfaces = pkg "sha256-jgnfd+kmIaH/wQmVa5MUEaJ9j+SDBphMz9LbGAr2uIA=" "topic_tools_interfaces";
}
