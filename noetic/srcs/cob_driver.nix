{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "cob_driver";
    rev = "ac0d1e30b59d45498f169cae3a167bfa37d744d3";
    hash = "sha256-1qg/nUiTJpzjC2TbBYbKC0yRlcy5NrTFsyr9JOs31Ks=";
    name = "ipa320-cob_driver-ac0d1e30b59d45498f169cae3a167bfa37d744d3";
  });
in
{
  cob_base_drive_chain = pkg "sha256-IrU3xUKbUYFjM633OvQ/TLwrHqnIzuzfpU9zDardrXg=" "cob_base_drive_chain";
  cob_bms_driver = pkg "sha256-+4PiZoehGGLiAwWPXtIzKSTTwQXrFf6t9pD9rLoZHDA=" "cob_bms_driver";
  cob_canopen_motor = pkg "sha256-jZQnp0pTwFAGjGMP3qOV0olw3k95WJ96DKStM85q4JY=" "cob_canopen_motor";
  cob_driver = pkg "sha256-fgQuAAKdEZFd+lg9A/Pe367qxZ9ucibUTeN8wmifXco=" "cob_driver";
  cob_elmo_homing = pkg "sha256-aAWxW+cyCW6KhRD5Z5ai/HUET9SfPL6Xm5VZQtnEUps=" "cob_elmo_homing";
  cob_generic_can = pkg "sha256-5geP3cCyobKnqFzS4pVpBJN3dWqVJywoH5rW9qd1yto=" "cob_generic_can";
  cob_light = pkg "sha256-mjvKRV+lmt5CeAMkX6A8Po1pd4UbcHbhOIdT3kHlpds=" "cob_light";
  cob_mimic = pkg "sha256-ZtPXTVlub2aZWp9RnkId4FbtusyI2/PT0fI4yk60f8U=" "cob_mimic";
  cob_phidget_em_state = pkg "sha256-hn7emlH8+T//GLvpS3pYYzYyxyZkmpctetExx+wPilw=" "cob_phidget_em_state";
  cob_phidget_power_state = pkg "sha256-uhFI0kAVEXoFRtMP16+cGoirMjpXsKiS1X4k6XVA6MQ=" "cob_phidget_power_state";
  cob_phidgets = pkg "sha256-FC7stlAd8DFziF2gSSKHIrysq2wcqRCMtCpP7VPfdVk=" "cob_phidgets";
  cob_relayboard = pkg "sha256-BPLfdYW9AcOVJGlS6s+Xsgv/6uA4/Il6FgbevvHEuks=" "cob_relayboard";
  cob_scan_unifier = pkg "sha256-B1lqU7hqZD2I5Avbu0M3TVNXT4aM2Kwhj9tHpiXw4Pw=" "cob_scan_unifier";
  cob_sick_lms1xx = pkg "sha256-I0sbimYD7I2jIbA27cIGdBkWdYFDaBKc90DGC2xHgkQ=" "cob_sick_lms1xx";
  cob_sick_s300 = pkg "sha256-zfXyLeNVr6fbgzFnaHPdFChzGcBV0XPeuCZ4wWGgoxI=" "cob_sick_s300";
  cob_sound = pkg "sha256-k+bLmQCZH3NyTIVA8I+jJUM3utHUij9Yv7crv2oxs0g=" "cob_sound";
  cob_undercarriage_ctrl = pkg "sha256-5fa8/49SXOTw2Nam+yxl/tcWCqXMXu0TI9iTwQeTuU8=" "cob_undercarriage_ctrl";
  cob_utilities = pkg "sha256-fzAfrA9/CSyP5nBh4vlQsru8JiA5GxofN+zqS4R6v2U=" "cob_utilities";
  cob_voltage_control = pkg "sha256-Cgv8DFB78olCptLH0UZFjpg6w/DGUTiq8lmI79g16LA=" "cob_voltage_control";
  laser_scan_densifier = pkg "sha256-VlTAZspn1IJvcKpI8HyFAqiT5YZWR4bdHvNAY1XyvnM=" "laser_scan_densifier";
}
