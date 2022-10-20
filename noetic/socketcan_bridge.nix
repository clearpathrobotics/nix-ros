{
  can_msgs,
  catkin,
  rosconsole_bridge,
  roscpp,
  roslint,
  rostest,
  rosunit,
  socketcan_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "socketcan_bridge";
  pkgFinal = final.noetic.socketcan_bridge;
  src = srcs.ros_canopen.socketcan_bridge;

  colconBuildDepends = [
    can_msgs
    catkin
    rosconsole_bridge
    roscpp
    socketcan_interface
  ];

  colconRunDepends = [
    can_msgs
    rosconsole_bridge
    roscpp
    socketcan_interface
  ];

  colconTestDepends = [
    roslint
    rostest
    rosunit
  ];
}
