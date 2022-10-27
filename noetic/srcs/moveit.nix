{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "moveit";
    rev = "f94f958337d4791a13ba48de25bac9c9c60d3ce4";
    hash = "sha256-JEOD/VItrzFE77nMgTTNaPkuNr8jCBgWq4rNuK9gSfk=";
    name = "ros-planning-moveit-f94f958337d4791a13ba48de25bac9c9c60d3ce4";
  });
in
{
  chomp_motion_planner = pkg "sha256-B2JcFMq4O2hMgv7FfpLOulPNmyBHbqjBr+5jzzD9S0Y=" "moveit_planners/chomp/chomp_motion_planner";
  moveit = pkg "sha256-C0z9hqu76oyeneIquNyTCo4cAzd0fsl7At6DiqdZScY=" "moveit";
  moveit_chomp_optimizer_adapter = pkg "sha256-Lq5olkjU/xLsDExH0rcWg7HxKarVst+2ZJU/eSfTkHo=" "moveit_planners/chomp/chomp_optimizer_adapter";
  moveit_commander = pkg "sha256-N21Wp4449GINT2M7mLCj0NaCskkqK0lyYu9bDqcjadk=" "moveit_commander";
  moveit_core = pkg "sha256-1745EKhuNaRYPsuCT74oaIEq7lT+X+nBKO37RJnCh9E=" "moveit_core";
  moveit_fake_controller_manager = pkg "sha256-gQNH2CDb+WaBMb7TJ9rKTboHzX8XTgoR+ov6WwOAeg0=" "moveit_plugins/moveit_fake_controller_manager";
  moveit_kinematics = pkg "sha256-ghOToq6oNM0skLbeqgE/xvsVFOZziZ2eW6qonBDmW9E=" "moveit_kinematics";
  moveit_planners = pkg "sha256-kM68cJxWEsSR2i34n6HgCWneOFOGGBAJf9IDLAglHnk=" "moveit_planners/moveit_planners";
  moveit_planners_chomp = pkg "sha256-t4mhPqoWWvuL221/T8PRshRunSaE92boxwvmlP0DfRM=" "moveit_planners/chomp/chomp_interface";
  moveit_planners_ompl = pkg "sha256-Y4IL6z91I1ulxITInmqxrNcN5LxsANE/BMCYIbW04Bk=" "moveit_planners/ompl";
  moveit_plugins = pkg "sha256-SilYII7tq9GsnhSRGie90Ar/r4kAcfPBgUrKtXIofEs=" "moveit_plugins/moveit_plugins";
  moveit_ros = pkg "sha256-ZGsXhRRCkh+hvZkyUaFibRM6wZLSd/3tzQF+2aWRtQw=" "moveit_ros/moveit_ros";
  moveit_ros_benchmarks = pkg "sha256-WjYivXx0Yt0K52A/TKF7itrHVqOnF80qk0R9siNj9pk=" "moveit_ros/benchmarks";
  moveit_ros_control_interface = pkg "sha256-ywU2abVP6vCK9WHsWbSAzhCQxus+qw5e7kOtHPqmkOA=" "moveit_plugins/moveit_ros_control_interface";
  moveit_ros_manipulation = pkg "sha256-dmd7yd1sUsuTExEvVSNinY+iqk8OVjnZApYI+ACCvJI=" "moveit_ros/manipulation";
  moveit_ros_move_group = pkg "sha256-c2z/7RoiyVTfrQX3U9uKIiCWDcbEijlXQafDf6oL0So=" "moveit_ros/move_group";
  moveit_ros_occupancy_map_monitor = pkg "sha256-2H4ocJ2Lakmh3Sbf8a0FuLf1dFUm4lYsh7T85W0/ZhA=" "moveit_ros/occupancy_map_monitor";
  moveit_ros_perception = pkg "sha256-6Lycbbu7hnDF3TG1ubf0M+RvEgOq3dl/5yWg70LdS0A=" "moveit_ros/perception";
  moveit_ros_planning = pkg "sha256-/kxY6CysuRPelkeAg7GOwCi/8l9LLD/oGpTcieIoJXA=" "moveit_ros/planning";
  moveit_ros_planning_interface = pkg "sha256-s4RDxMCdsoKlRbiJ0wlN4XzQNhSnCTT1trq43uhAdB0=" "moveit_ros/planning_interface";
  moveit_ros_robot_interaction = pkg "sha256-ZpCw8HcfSs+E7kW1kxt/Z/q7nYfGENDIvJDm9FTebWg=" "moveit_ros/robot_interaction";
  moveit_ros_visualization = pkg "sha256-FTCTNxv29H7FT7ByJXhAqcwFZQORl+yCKEyQm6pGfgU=" "moveit_ros/visualization";
  moveit_ros_warehouse = pkg "sha256-zVYeajt57QuwR7mLA9wLSP3eVMnExxFpLzIM27ZiyAY=" "moveit_ros/warehouse";
  moveit_runtime = pkg "sha256-nLYfsrgeFEEz4B6Ye95S4ltrzgc44/pqZP8nr8GfI+0=" "moveit_runtime";
  moveit_servo = pkg "sha256-D1ujo0TaaKytY8HNprMABVN9Vl/KpyplKJRiovrkX8U=" "moveit_ros/moveit_servo";
  moveit_setup_assistant = pkg "sha256-q4kfWr4vNcYOJGrGskk8sfnVy8HM5C7nmOAFPOVChiQ=" "moveit_setup_assistant";
  moveit_simple_controller_manager = pkg "sha256-fq1ZrVWKfMnMBdu6uI5cuJdR1GF6+g1BKPD/Fj7AcVs=" "moveit_plugins/moveit_simple_controller_manager";
  pilz_industrial_motion_planner = pkg "sha256-4N4yu7nhUA6mmjQk/CIggEfN+D+sAfiu9F/2oxDJwJ8=" "moveit_planners/pilz_industrial_motion_planner";
  pilz_industrial_motion_planner_testutils = pkg "sha256-bwywVCdTJUwKKIr4i0X0mICNEaZMY0G+6UkqSAXsJGk=" "moveit_planners/pilz_industrial_motion_planner_testutils";
}
