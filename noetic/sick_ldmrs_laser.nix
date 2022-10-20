{
  catkin,
  sick_ldmrs_description,
  sick_ldmrs_driver,
  sick_ldmrs_msgs,
  sick_ldmrs_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sick_ldmrs_laser";
  pkgFinal = final.noetic.sick_ldmrs_laser;
  src = srcs.sick_ldmrs_laser.sick_ldmrs_laser;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    sick_ldmrs_description
    sick_ldmrs_driver
    sick_ldmrs_msgs
    sick_ldmrs_tools
  ];

  colconTestDepends = [
  ];
}
