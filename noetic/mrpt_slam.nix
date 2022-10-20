{
  catkin,
  mrpt_ekf_slam_2d,
  mrpt_ekf_slam_3d,
  mrpt_graphslam_2d,
  mrpt_icp_slam_2d,
  mrpt_rbpf_slam,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_slam";
  pkgFinal = final.noetic.mrpt_slam;
  src = srcs.mrpt_slam.mrpt_slam;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    mrpt_ekf_slam_2d
    mrpt_ekf_slam_3d
    mrpt_graphslam_2d
    mrpt_icp_slam_2d
    mrpt_rbpf_slam
  ];

  colconTestDepends = [
  ];
}
