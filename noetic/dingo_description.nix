{
  catkin,
  lms1xx,
  realsense2_description,
  robot_state_publisher,
  urdf,
  velodyne_description,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dingo_description";
  pkgFinal = final.noetic.dingo_description;
  src = srcs.dingo.dingo_description;

  colconBuildDepends = [
    catkin
    robot_state_publisher
    urdf
    xacro
  ];

  colconRunDepends = [
    lms1xx
    realsense2_description
    robot_state_publisher
    urdf
    velodyne_description
    xacro
  ];

  colconTestDepends = [
  ];
}
