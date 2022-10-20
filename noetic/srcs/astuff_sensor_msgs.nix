{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "astuff";
    repo = "astuff_sensor_msgs";
    rev = "8d7ca424d1d846836b73240a1b5343bb2bdf79e9";
    hash = "sha256-YBKis2EO315r3oaRq3E0VTinsEzL5Nh3MLgpE1HYzV4=";
    name = "astuff-astuff_sensor_msgs-8d7ca424d1d846836b73240a1b5343bb2bdf79e9";
  });
in
{
  delphi_esr_msgs = pkg "sha256-D5LFqiNL8X7+DIB2qif7YohHCL6wyx9q8KIWwsTPyn0=" "delphi_esr_msgs";
  delphi_mrr_msgs = pkg "sha256-heKRkgs78QUHlGupyi/wdBdSP2cly5RdfZ32B2eM8Ho=" "delphi_mrr_msgs";
  delphi_srr_msgs = pkg "sha256-G426FpIqDydAPAebMPtjIWTIDeoTaz6jEieww8g2g14=" "delphi_srr_msgs";
  derived_object_msgs = pkg "sha256-JYHamuEPnYN6s+XfH/sxGfpPj7dX/DoXQiekYjS7r3E=" "derived_object_msgs";
  ibeo_msgs = pkg "sha256-uCL2CzOlSDnmJDihLQbhy1TSONVmymbokGVMOp92si0=" "ibeo_msgs";
  kartech_linear_actuator_msgs = pkg "sha256-uh/ORW9mcX0klEqpFsiLSbVtvE0AjuGpi9VMZBY1qB8=" "kartech_linear_actuator_msgs";
  mobileye_560_660_msgs = pkg "sha256-j3kbOy3v3nzX/371wwDctrTWs3bNrvWhUcevn1ZJ7VA=" "mobileye_560_660_msgs";
  neobotix_usboard_msgs = pkg "sha256-yNEAYOH1z1KchvD2r2t1D5ZZshbuDVnRF8wewizXRMA=" "neobotix_usboard_msgs";
}
