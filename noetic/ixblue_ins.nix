{
  catkin,
  ixblue_ins_driver,
  ixblue_ins_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ixblue_ins";
  pkgFinal = final.noetic.ixblue_ins;
  src = srcs.ixblue_ins_stdbin_driver.ixblue_ins;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    ixblue_ins_driver
    ixblue_ins_msgs
  ];

  colconTestDepends = [
  ];
}
