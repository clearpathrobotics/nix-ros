{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "skasperski";
    repo = "navigation_2d";
    rev = "dc7b91aa55b144ca1cfffc053b98bfa5e114e734";
    hash = "sha256-pWxD8D8AE3zbTbHIA0UOMB0TnvMewV43X30k72Yl0I4=";
    name = "skasperski-navigation_2d-dc7b91aa55b144ca1cfffc053b98bfa5e114e734";
  });
in
{
  nav2d = pkg "sha256-6wgqdwmEpa4N61+eKPUwgmvR2omZOxy2CZflzBn7v1A=" "nav2d";
  nav2d_exploration = pkg "sha256-jml/Gvvz0wfHngq2Wb0zTIDB9avVwyCaz//WSURs3rg=" "nav2d_exploration";
  nav2d_karto = pkg "sha256-VmdDvLhP+yUHcema1929O23154uOQ4HidnF+Olerr4A=" "nav2d_karto";
  nav2d_localizer = pkg "sha256-VwXUv3GG7RwYQxcRtQJUzdkNpOTpaEtsxyGuv3OBoWo=" "nav2d_localizer";
  nav2d_msgs = pkg "sha256-crHJFtKYp3KQygnjODSqNpIggGHY1f3iCo03Q1764d0=" "nav2d_msgs";
  nav2d_navigator = pkg "sha256-xuCTn335Ct+u4MaYSR5stI+CwLjFK2c8VNl/FdX8TJw=" "nav2d_navigator";
  nav2d_operator = pkg "sha256-hI9HTZOuyv9zCROajjUTfm+nfmXJaK3Rba4JB5/Lha8=" "nav2d_operator";
  nav2d_remote = pkg "sha256-TuDjIIi50McRwdqBKc3tH4tQyybVPmyAslfDWeFfcJo=" "nav2d_remote";
  nav2d_tutorials = pkg "sha256-Z4yRVoTemH2OUmlzQq6VycHzoIkI3FRMKMg55WcTvUc=" "nav2d_tutorials";
}
