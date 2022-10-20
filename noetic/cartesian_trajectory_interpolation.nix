{
  cartesian_control_msgs,
  catkin,
  joint_trajectory_controller,
  roscpp,
  rospy,
  rosunit,
  tf2_eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cartesian_trajectory_interpolation";
  pkgFinal = final.noetic.cartesian_trajectory_interpolation;
  src = srcs.ros_controllers_cartesian.cartesian_trajectory_interpolation;

  colconBuildDepends = [
    cartesian_control_msgs
    catkin
    joint_trajectory_controller
    roscpp
    rospy
    tf2_eigen
  ];

  colconRunDepends = [
    cartesian_control_msgs
    joint_trajectory_controller
    roscpp
    rospy
    tf2_eigen
  ];

  colconTestDepends = [
    rosunit
  ];
}
