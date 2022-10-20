{
  catkin,
  face_detector,
  leg_detector,
  people_msgs,
  people_tracking_filter,
  people_velocity_tracker,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "people";
  pkgFinal = final.noetic.people;
  src = srcs.people.people;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    face_detector
    leg_detector
    people_msgs
    people_tracking_filter
    people_velocity_tracker
  ];

  colconTestDepends = [
  ];
}
