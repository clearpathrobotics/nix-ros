{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "dfki-ric";
    repo = "mir_robot";
    rev = "c8c40b057e284f556041cb0ebecf0645eb59a2ef";
    hash = "sha256-zn5Hu+ecUx8dGc96RfvBrKH4iDdWRcC8/N+vnbw//0I=";
    name = "dfki-ric-mir_robot-c8c40b057e284f556041cb0ebecf0645eb59a2ef";
  });
in
{
  mir_actions = pkg "sha256-FnVQbWFaCRnZzhK+xvoXGcJkJSryssYfyQp8TejlXWI=" "mir_actions";
  mir_description = pkg "sha256-2hjKBIwpVYdT2VfBYHOOlrxTOgdc+WIYxVBI/4o4aZs=" "mir_description";
  mir_driver = pkg "sha256-Gqm+u5Yu7xw6on+goxvtuvBt/qBqd/IOVyR1PNgGuE0=" "mir_driver";
  mir_dwb_critics = pkg "sha256-NNho0Ezrq97HU2o+UGErl7LDwrZsCzrw3hgconlLeyU=" "mir_dwb_critics";
  mir_gazebo = pkg "sha256-1nz3e/CmQcWirdp/VXACN3YxPP3kPM02vY5cOPion6s=" "mir_gazebo";
  mir_msgs = pkg "sha256-XwMB3wTPtO429iEmnnCMM0AOQhb7Ip54Rvqr4KQE8u8=" "mir_msgs";
  mir_navigation = pkg "sha256-GEQSOFbn4GTFXj4qVNCTSWdgV8ik6Er1CZ2GtbFXS0E=" "mir_navigation";
  mir_robot = pkg "sha256-yLCHquilWkajblxmgb6pll48Eqoq5hjhjUT/wGGgs8g=" "mir_robot";
  sdc21x0 = pkg "sha256-n44Iy0oKHNl6ygRCS7LDbgmvlVrjLQxKr8dsp0ShiQ0=" "sdc21x0";
}
