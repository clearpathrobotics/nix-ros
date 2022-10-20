{
  catkin,
  python3Packages,
  roscpp,
  rospy,
  rostest,
  rosunit,
  std_msgs,
  z_laser_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "z_laser_zlp1";
  pkgFinal = final.noetic.z_laser_zlp1;
  src = srcs.z_laser_projector.z_laser_zlp1;

  colconBuildDepends = [
    catkin
    python3Packages.ezdxf
    python3Packages.numpy
    python3Packages.scipy
    roscpp
    rospy
    std_msgs
    z_laser_msgs
  ];

  colconRunDepends = [
    python3Packages.ezdxf
    python3Packages.numpy
    python3Packages.scipy
    roscpp
    rospy
    std_msgs
    z_laser_msgs
  ];

  colconTestDepends = [
    python3Packages.nose
    rostest
    rosunit
  ];
}
