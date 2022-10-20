{
  catkin,
  geometry_msgs,
  leo_description,
  leo_fw,
  robot_state_publisher,
  rosapi,
  rosbridge_server,
  rosserial_python,
  sensor_msgs,
  web_video_server,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "leo_bringup";
  pkgFinal = final.noetic.leo_bringup;
  src = srcs.leo_robot.leo_bringup;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    geometry_msgs
    leo_description
    leo_fw
    robot_state_publisher
    rosapi
    rosbridge_server
    rosserial_python
    sensor_msgs
    web_video_server
    xacro
  ];

  colconTestDepends = [
  ];
}
