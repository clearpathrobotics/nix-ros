{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "moveit2";
    rev = "029a7a995bcb795d3f7656b43f60ac4793947f33";
    hash = "sha256-+Gxk/MfbXvmuyRmcgPRLySoSP56ySQG36mgTWNYRnKY=";
    name = "ros-planning-moveit2-029a7a995bcb795d3f7656b43f60ac4793947f33";
  });
in
{
  chomp_motion_planner = pkg "sha256-IrVjBR0Q8u7iBQZpwdpNr39dPhg7DLsy2+x3OB1a6Cw=" "moveit_planners/chomp/chomp_motion_planner";
  moveit = pkg "sha256-b328Tv4+niZqPkqWo/leYTACbsIOd5Q/nTUxLIDc3Qg=" "moveit";
  moveit_chomp_optimizer_adapter = pkg "sha256-uWGHJ6Z1BYim3THbUmwLgrEpRRWYoVshz5pnPeBvNns=" "moveit_planners/chomp/chomp_optimizer_adapter";
  moveit_common = pkg "sha256-BxF1c6BewtXfjpBqIIORGFI6KsLQOe0ke198CDef5RM=" "moveit_common";
  moveit_configs_utils = pkg "sha256-nZKemwEMUsG3YTZCh9rcZi3ReruXQRMqaXH50kPe94I=" "moveit_configs_utils";
  moveit_core = pkg "sha256-3uNaEzGBGx2O2NRi3zgFwjTWVq0if5VChIi55QRxVKM=" "moveit_core";
  moveit_hybrid_planning = pkg "sha256-sHS8o63p7lXYn8Ewkx1pn9j2nbA9bfxlc07Ts/dfoNg=" "moveit_ros/hybrid_planning";
  moveit_kinematics = pkg "sha256-UaLIpF8va5TeSOqxt9pn0rc6teYd8seTHhtnWMtH8fw=" "moveit_kinematics";
  moveit_planners = pkg "sha256-LqMOwGgh4I0bbKi7m6TMYqHAxdIMwmNbils1cqmT/Bg=" "moveit_planners/moveit_planners";
  moveit_planners_chomp = pkg "sha256-CQOR1L1bHxQwR9XMJvpDHiykGgE3JF2chvaqatR018g=" "moveit_planners/chomp/chomp_interface";
  moveit_planners_ompl = pkg "sha256-HlsjlEK2yuErlv2Hwh+lI3FuN7nbqn1CedjoDd9BGM8=" "moveit_planners/ompl";
  moveit_plugins = pkg "sha256-4MJ2xWXAzhkm42JO6Yo1mk8ZOptMSd7IVAdgXpVnZOQ=" "moveit_plugins/moveit_plugins";
  moveit_resources_prbt_ikfast_manipulator_plugin = pkg "sha256-S5Rs9263jpUydRLT8jRuBD7gUxjOASoFdvdCRow29g4=" "moveit_planners/test_configs/prbt_ikfast_manipulator_plugin";
  moveit_resources_prbt_moveit_config = pkg "sha256-ITk/lmRFokyQl/DzAz8PULmw6fX032YsEv38JXuUuQI=" "moveit_planners/test_configs/prbt_moveit_config";
  moveit_resources_prbt_pg70_support = pkg "sha256-SqqicbQknAX4/+nwCM9mrY+QehkbmfmzA1i6gb/BVRY=" "moveit_planners/test_configs/prbt_pg70_support";
  moveit_resources_prbt_support = pkg "sha256-yoS8FQKTLR6KJZRf5WJgmjQwzB6bVyH0HhWsWHCarKo=" "moveit_planners/test_configs/prbt_support";
  moveit_ros = pkg "sha256-hEmxVh/wE+cSVQcipM5VaUwLI+QURKv448blH3/GT7M=" "moveit_ros/moveit_ros";
  moveit_ros_benchmarks = pkg "sha256-3gaKTvJpUv9AjE2+BQMP9uNMChKPk+L4NK12soF35oY=" "moveit_ros/benchmarks";
  moveit_ros_control_interface = pkg "sha256-OOicVJSTBHt+yZTKmUeujPSGT1QU1gjPy0/3FqD90UY=" "moveit_plugins/moveit_ros_control_interface";
  moveit_ros_move_group = pkg "sha256-I9SxbOV/4KxU+1j+1CjHPKvh3aHF7lCVC2Zw/DWkaxs=" "moveit_ros/move_group";
  moveit_ros_occupancy_map_monitor = pkg "sha256-YhHfqNmVNNX8wYdOYSeOagGMIQ35Ivvlj3vgVW8Yigw=" "moveit_ros/occupancy_map_monitor";
  moveit_ros_perception = pkg "sha256-hD7dgH4X+gcZgPtq2Wwlt4ln0jzv8LQ5U88o9UFa4Zk=" "moveit_ros/perception";
  moveit_ros_planning = pkg "sha256-3vYWKet1cEt/kBPAhINA2yIDYMEBGKQvFSJNxDRWA2M=" "moveit_ros/planning";
  moveit_ros_planning_interface = pkg "sha256-qea+t8dgGT7Ik+tXbqAKT2fLlALXD3CGhwmiFvU+9oQ=" "moveit_ros/planning_interface";
  moveit_ros_robot_interaction = pkg "sha256-Z2NysC+MRDtDY1sjJm6+JuEZp22Mr5wwbIoxmnlljHQ=" "moveit_ros/robot_interaction";
  moveit_ros_visualization = pkg "sha256-H1pAbCPAJZR95I5D984kmst1v3uZetttJXUQfN6mgyk=" "moveit_ros/visualization";
  moveit_ros_warehouse = pkg "sha256-WTrylB0it5zsrkAzJXW2oTML9ngOaNFiaPcCo35hiXs=" "moveit_ros/warehouse";
  moveit_runtime = pkg "sha256-ssM6LBArxSnMw8Jt0hPCppEzCPyS3TT3U6LjwtH1dzY=" "moveit_runtime";
  moveit_servo = pkg "sha256-IqJSN63pWOI7RlhWH3lNIebjLKfyJOBM+pt7FTgMfEA=" "moveit_ros/moveit_servo";
  moveit_setup_app_plugins = pkg "sha256-oyWIPSJ0eu/4tkoqwo4gKwKkHcOAPH2V+192MKO/RS0=" "moveit_setup_assistant/moveit_setup_app_plugins";
  moveit_setup_assistant = pkg "sha256-M9t71eIkLDL7Beg2P8GDdcTRHDLjlCaibKXaI4etIXQ=" "moveit_setup_assistant/moveit_setup_assistant";
  moveit_setup_controllers = pkg "sha256-x7mos1AsBh7gEiWNuRjQ3DwAslzR+5vpRWOL7V8f4Cg=" "moveit_setup_assistant/moveit_setup_controllers";
  moveit_setup_core_plugins = pkg "sha256-CdIJNWvhX/wnfm2tbHqlDIq/zCcBVXJ+LJ015nt2v+4=" "moveit_setup_assistant/moveit_setup_core_plugins";
  moveit_setup_framework = pkg "sha256-ieY0/tN6kdYmfS0hL+4uGfPjlXw7yFEjYuvXZTn3Mkk=" "moveit_setup_assistant/moveit_setup_framework";
  moveit_setup_srdf_plugins = pkg "sha256-SDWqRP6hpNAKL0B+WuwLWec3SH9hMxve0OYD3mvtoyY=" "moveit_setup_assistant/moveit_setup_srdf_plugins";
  moveit_simple_controller_manager = pkg "sha256-V9TIA1YpvlB4JUsF11EJ7tQDDoWOhJtDvJKJm6NKJOk=" "moveit_plugins/moveit_simple_controller_manager";
  pilz_industrial_motion_planner = pkg "sha256-478P1Li7PTryFW8DZF+ailc9rREmMZkGe9ifKwuTq2U=" "moveit_planners/pilz_industrial_motion_planner";
  pilz_industrial_motion_planner_testutils = pkg "sha256-xCj8QmBifHhjNsvrb/v/midVZu5ocvSoO8zziQDMLis=" "moveit_planners/pilz_industrial_motion_planner_testutils";
}
