{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "ros_tutorials";
    rev = "db6328879831b4abadac939bd69b43133414c0db";
    hash = "sha256-Go68SoAXAJBhlwP4Mm66IHQSLpNvBBsDw6Z7Jil9uCE=";
    name = "ros-ros_tutorials-db6328879831b4abadac939bd69b43133414c0db";
  });
in
{
  ros_tutorials = pkg "sha256-5TeU6qOKPpZWV4liC3Jgsc9WSR3tP+WEuPZiOxkR7MI=" "ros_tutorials";
  roscpp_tutorials = pkg "sha256-kZCynUoZp2FtLxXNJcigszKfeGAhib2gWp7/xdL+kXw=" "roscpp_tutorials";
  rospy_tutorials = pkg "sha256-hIpTDte2Xb8FBxRk0ItDFqPAzIu41uZ1jCJo+PZnu0w=" "rospy_tutorials";
  turtlesim = pkg "sha256-HGPqGO2TXLCE6g2fHQsrKenVc+hj/x3L6ahwT1KY/Gw=" "turtlesim";
}
