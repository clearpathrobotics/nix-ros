{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "perception_pcl";
    rev = "3eecd4e37b9a4f1ca73a7cd09c0219332e7a18cb";
    hash = "sha256-jwWZrdesc09cBQASeY3Rq0i0lcOPo/hQTbpmFFha/oo=";
    name = "ros-perception-perception_pcl-3eecd4e37b9a4f1ca73a7cd09c0219332e7a18cb";
  });
in
{
  pcl_conversions = pkg "sha256-MgN9yjNz9nNoM70IqlgJFuyyO0BcUaY5hsbzdwx6I5Y=" "pcl_conversions";
  pcl_ros = pkg "sha256-Qay6nqMhuPz1F59vNbIzU0w/yLacWn25DeNXy1CqQf4=" "pcl_ros";
  perception_pcl = pkg "sha256-bY3nlCYaf65UjeV8ZMmevigWOBtAQ9xU0JHQQ18/uKY=" "perception_pcl";
}
