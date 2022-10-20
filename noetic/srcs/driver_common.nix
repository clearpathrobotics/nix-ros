{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "driver_common";
    rev = "6724153334f009ac388dc262ec679cd6ca0d5f4b";
    hash = "sha256-nKCfMIbdj1KcohFRUqhmJHrDhOjE8h3FnQzeGWbAl3U=";
    name = "ros-drivers-driver_common-6724153334f009ac388dc262ec679cd6ca0d5f4b";
  });
in
{
  driver_base = pkg "sha256-lGb9f9ZY6WbT3ZmQD5je0LtN7nmxQSONRsEUdNoiaF0=" "driver_base";
  driver_common = pkg "sha256-Z8VuQlf0skvUIsyhaW12LKanIrVA6Y3BIjpMy3Wexs8=" "driver_common";
  timestamp_tools = pkg "sha256-LQqf9uiKPH4v3b6YSMCfWhpPcVhVynk2fwx4aq7/PyQ=" "timestamp_tools";
}
