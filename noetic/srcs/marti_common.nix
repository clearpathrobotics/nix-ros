{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "swri-robotics";
    repo = "marti_common";
    rev = "dcdab5002de03ea62cdfac350ee09d3df18e4951";
    hash = "sha256-M09/ssRhWW0PlQ3wcjnLa6WXaa5/5q2fj+YimogfFDc=";
    name = "swri-robotics-marti_common-dcdab5002de03ea62cdfac350ee09d3df18e4951";
  });
in
{
  marti_data_structures = pkg "sha256-QYtsHGdpf2JqsadQrM9lHT8XP8Bs+MkWkQMQlGJARWY=" "marti_data_structures";
  swri_cli_tools = pkg "sha256-JJmIy2ZJFsGA4EgrzjTXxfxxHRnTVHqZQScIm7KMBkY=" "swri_cli_tools";
  swri_console_util = pkg "sha256-gGsi0JXxItBxE9WrEBpaI6r54Azf2RsyVNtzohyqb5I=" "swri_console_util";
  swri_dbw_interface = pkg "sha256-GY2AZ5E2A+EBPNMbIXo5X57FEqqNDnJd7uFDH0hsIBg=" "swri_dbw_interface";
  swri_geometry_util = pkg "sha256-ulx0FAyLOffwXUd7UwL2ZdQ/l2H8YzZbDAo2YTYduso=" "swri_geometry_util";
  swri_image_util = pkg "sha256-DqneoCYHs4y5VhYcpSEpWx76hugZZL3N+EzTSu4GSqs=" "swri_image_util";
  swri_math_util = pkg "sha256-Vz20syGZfrKA+Ib0b8BJM/nTaOfN6CxtEVArXkT8dwE=" "swri_math_util";
  swri_nodelet = pkg "sha256-42wkVD2H/SaGulcMEROawfekpN0/oMKtb9AXq+nYV8s=" "swri_nodelet";
  swri_opencv_util = pkg "sha256-M2CNQviWLd4XNqcjlH9HhDDKf2wfAdDqr9vuU13Fy1U=" "swri_opencv_util";
  swri_prefix_tools = pkg "sha256-ECnNCSdWXUqA2/lfsR/Y9wKpWyK9AjwLi00GNnwpufc=" "swri_prefix_tools";
  swri_roscpp = pkg "sha256-VUC/301Kkb4lE8LtN/nh4pzUIE+Za3cw7wq6zFh2T/Y=" "swri_roscpp";
  swri_rospy = pkg "sha256-hKaYVmqoLehCXumz+nQeu3Nz0BfOrNoo66viKbSYEVU=" "swri_rospy";
  swri_route_util = pkg "sha256-lrQIIIUIuVjLP6gk1VxgIA8xBP5Js+mP4aBo0ibaSxo=" "swri_route_util";
  swri_serial_util = pkg "sha256-W2FJeVbiBdrXM4VEOzQ+h/c44E/8Gf2UDMPMdDh5of4=" "swri_serial_util";
  swri_string_util = pkg "sha256-sN8iZWwiqUE8TuvICjQ5xN89AEaml2Vhg7s/Igd1NQ4=" "swri_string_util";
  swri_system_util = pkg "sha256-v5BrSgBtdAueJdUcyFQBMubVeED0xYd3kYvjqTlNexo=" "swri_system_util";
  swri_transform_util = pkg "sha256-2p3MOalmCs2ZG8zRynSO91R1iscd+UTfXl3D3yMGJdM=" "swri_transform_util";
  swri_yaml_util = pkg "sha256-Eb3Wb4/5hMqNaX4xN65BEBfeyfBrhoSgOlUqBifKELs=" "swri_yaml_util";
}
