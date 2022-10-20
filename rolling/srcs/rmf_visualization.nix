{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "open-rmf";
    repo = "rmf_visualization";
    rev = "191d702dde6f25b553ce35a6a5adcfa58933435d";
    hash = "sha256-F1JDvOSWFhf/C0w0MQZlxuBLjICasEd1SyNkqA3OArU=";
    name = "open-rmf-rmf_visualization-191d702dde6f25b553ce35a6a5adcfa58933435d";
  });
in
{
  rmf_visualization = pkg "sha256-5ewLzbaJZWhG/GINNWbUdrceOROs72REbOalZaonLow=" "rmf_visualization";
  rmf_visualization_building_systems = pkg "sha256-00Lv8hWY3oP5QdO3sPyozsM8OdUsUWNILJOOHA34pWw=" "rmf_visualization_building_systems";
  rmf_visualization_fleet_states = pkg "sha256-Tn26fa5i3u3IWIk+5iqc2vduqF3FiuOKmkprOthGTJM=" "rmf_visualization_fleet_states";
  rmf_visualization_floorplans = pkg "sha256-lioT1a/WV3S56lMN4JUWUG2Mxutp5p2dCOa/ttf78F0=" "rmf_visualization_floorplans";
  rmf_visualization_navgraphs = pkg "sha256-4I8JrWPSSIO4DVozeGrkfC6hC82CulECwm+L2NtaQyI=" "rmf_visualization_navgraphs";
  rmf_visualization_obstacles = pkg "sha256-i+FlkUgtgt53CBkm9C/Nq1qhTVNe1aMa1Kki6QKeJ6I=" "rmf_visualization_obstacles";
  rmf_visualization_rviz2_plugins = pkg "sha256-NITSXmS+CiZ8E8/ENT/gW5R4WPoPcQW0Sz5KKVIurlQ=" "rmf_visualization_rviz2_plugins";
  rmf_visualization_schedule = pkg "sha256-zVqLqvd5ECp5NzKyyLQT+pEfV0LOv8Z/HkVkoYSvVzs=" "rmf_visualization_schedule";
}
