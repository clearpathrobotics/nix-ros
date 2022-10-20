{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "AinsteinAI";
    repo = "ainstein_radar";
    rev = "727f25504d8eaa967725de61c6ff821954c2751d";
    hash = "sha256-8DlUkZL4t00jyZIdBtK3LzfEL4VrbKIK1MtrvBcPzao=";
    name = "AinsteinAI-ainstein_radar-727f25504d8eaa967725de61c6ff821954c2751d";
  });
in
{
  ainstein_radar = pkg "sha256-ktsioUOyq1uTQvrnHkZQoX78zHLY2XV34DjrVIOS/k4=" "ainstein_radar";
  ainstein_radar_drivers = pkg "sha256-3DqjHLiDeaGwDXk2E2xlSygVr17xRafRZv0iEkKuneY=" "ainstein_radar_drivers";
  ainstein_radar_filters = pkg "sha256-YEz6qvJObDgJSvg+LvWdPRBbICC+pq10jrU9UPkavRg=" "ainstein_radar_filters";
  ainstein_radar_gazebo_plugins = pkg "sha256-3s6dJ+VkpmWk3YhLjzbWqfso/VP/UiKHN0Rm4ao/ZrM=" "ainstein_radar_gazebo_plugins";
  ainstein_radar_msgs = pkg "sha256-e+fsH+k7M3OhA2EHqU1Q1JgpjNFb0BRKARoUmRhZR0s=" "ainstein_radar_msgs";
  ainstein_radar_rviz_plugins = pkg "sha256-NWIGvu3VBFwtkQM74Any/S7glU88Nl5G/pjx6g9TouY=" "ainstein_radar_rviz_plugins";
  ainstein_radar_tools = pkg "sha256-mJJ8lJyIfc/LquVtfaoGXLyGfXQ6cp07YFl3CuQvvfo=" "ainstein_radar_tools";
}
