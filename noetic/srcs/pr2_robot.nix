{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pr2";
    repo = "pr2_robot";
    rev = "5d511e1eb60762fd8f2bcbcc1f3e2927976a64e8";
    hash = "sha256-/yMwToG7DCQxeSV6X8bXNROcPcgbOi2/E1uAsXp5MQc=";
    name = "pr2-pr2_robot-5d511e1eb60762fd8f2bcbcc1f3e2927976a64e8";
  });
in
{
  imu_monitor = pkg "sha256-ExZgSrZ1hoFwWfnra/HXhFZVuEY8se23LJf7YZsTs2U=" "imu_monitor";
  pr2_bringup = pkg "sha256-L8/Uc09X3KWhB0kiaJI2GV5P70L0gAwzTdsPXnVEMVE=" "pr2_bringup";
  pr2_camera_synchronizer = pkg "sha256-DSjHSlg3GwxxJgxiyyDdsPTkwORPTxnF+VlULOJV22c=" "pr2_camera_synchronizer";
  pr2_computer_monitor = pkg "sha256-oUJqx69y37cJajMYClE+e0vt4tYNJLsbRVzoEgWZH5I=" "pr2_computer_monitor";
  pr2_controller_configuration = pkg "sha256-jGYQpnMaIa4HOEGbAZMjwUDU078w1XryjoB2KVTk1NA=" "pr2_controller_configuration";
  pr2_ethercat = pkg "sha256-7WSCXQXiQx10EqJldo9Cmy/2/A5I8VQA57Npv9jIXMY=" "pr2_ethercat";
  pr2_robot = pkg "sha256-xPWb3+jop1behG902PUFi8DL9M+yK5AmtEQdkZVzwAs=" "pr2_robot";
  pr2_run_stop_auto_restart = pkg "sha256-Pupn6w/zH6KlnWGK7Mjmb7IoJXGLq2rFQzCt7fwedls=" "pr2_run_stop_auto_restart";
}
