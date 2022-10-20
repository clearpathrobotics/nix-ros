{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "luxonis";
    repo = "depthai-ros";
    rev = "9ac79711a7ae247588a86c75911ddb306e03617f";
    hash = "sha256-IUkfnja3r9yuD639B6ecwLyivS41hO5EdCirJ/4FtPY=";
    name = "luxonis-depthai-ros-9ac79711a7ae247588a86c75911ddb306e03617f";
  });
in
{
  depthai-ros = pkg "sha256-Qmzfjn+hrhEjSkq14ihEZ0G7eryux541cOw9wl+dKRE=" "depthai-ros";
  depthai_bridge = pkg "sha256-SBs5Wk0bKWYWuO9st1zkhY6cvjGzkAmdiKM5MeoziJA=" "depthai_bridge";
  depthai_examples = pkg "sha256-jNdC+tO9BWqd4vbNU9UTHzW/9/swXohbA4gKCIOcDmM=" "depthai_examples";
  depthai_ros_msgs = pkg "sha256-l8V7kaXNFQtgazo6zWSHDa62NrxTB1aKfKpR21pIgrU=" "depthai_ros_msgs";
}
