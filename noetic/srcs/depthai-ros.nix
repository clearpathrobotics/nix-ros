{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "luxonis";
    repo = "depthai-ros";
    rev = "af3a1ebff8d3ec8eecdece344d1250805294d520";
    hash = "sha256-j82Z4MZJBc1slj1SbeCJjs9Khl7D7i/xhLJFeqZveLQ=";
    name = "luxonis-depthai-ros-af3a1ebff8d3ec8eecdece344d1250805294d520";
  });
in
{
  depthai-ros = pkg "sha256-Qmzfjn+hrhEjSkq14ihEZ0G7eryux541cOw9wl+dKRE=" "depthai-ros";
  depthai_bridge = pkg "sha256-GSZAjJTe2Annqd45AUDsirTOaAtfQ6N/GZB9xX8SX+M=" "depthai_bridge";
  depthai_examples = pkg "sha256-jNdC+tO9BWqd4vbNU9UTHzW/9/swXohbA4gKCIOcDmM=" "depthai_examples";
  depthai_ros_msgs = pkg "sha256-l8V7kaXNFQtgazo6zWSHDa62NrxTB1aKfKpR21pIgrU=" "depthai_ros_msgs";
}
