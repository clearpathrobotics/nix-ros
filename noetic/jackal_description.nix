{
  catkin,
  flir_camera_description,
  lms1xx,
  pointgrey_camera_description,
  robot_state_publisher,
  roslaunch,
  sick_tim,
  urdf,
  velodyne_description,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jackal_description";
  pkgFinal = final.noetic.jackal_description;
  src = srcs.jackal.jackal_description;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    flir_camera_description
    lms1xx
    pointgrey_camera_description
    robot_state_publisher
    sick_tim
    urdf
    velodyne_description
    xacro
  ];

  colconTestDepends = [
  ];
}
