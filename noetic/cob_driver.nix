{
  catkin,
  cob_base_drive_chain,
  cob_bms_driver,
  cob_canopen_motor,
  cob_elmo_homing,
  cob_generic_can,
  cob_light,
  cob_mimic,
  cob_phidgets,
  cob_relayboard,
  cob_scan_unifier,
  cob_sick_lms1xx,
  cob_sick_s300,
  cob_sound,
  cob_undercarriage_ctrl,
  cob_utilities,
  cob_voltage_control,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_driver";
  pkgFinal = final.noetic.cob_driver;
  src = srcs.cob_driver.cob_driver;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_base_drive_chain
    cob_bms_driver
    cob_canopen_motor
    cob_elmo_homing
    cob_generic_can
    cob_light
    cob_mimic
    cob_phidgets
    cob_relayboard
    cob_scan_unifier
    cob_sick_lms1xx
    cob_sick_s300
    cob_sound
    cob_undercarriage_ctrl
    cob_utilities
    cob_voltage_control
  ];

  colconTestDepends = [
  ];
}
