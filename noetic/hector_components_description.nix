{
  catkin,
  gazebo_ros_control_select_joints,
  hector_gazebo_thermal_camera,
  hector_sensors_description,
  hector_xacro_tools,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_components_description";
  pkgFinal = final.noetic.hector_components_description;
  src = srcs.hector_models.hector_components_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    gazebo_ros_control_select_joints
    hector_gazebo_thermal_camera
    hector_sensors_description
    hector_xacro_tools
    xacro
  ];

  colconTestDepends = [
  ];
}
