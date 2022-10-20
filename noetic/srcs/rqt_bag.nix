{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_bag";
    rev = "059a2213a0a71d2e07fa6f66e39e0b8da2fa5d75";
    hash = "sha256-9z9d/xVwa0RnkVg4tTD35EFb9m5tvtFIPgnUHUvi2Jc=";
    name = "ros-visualization-rqt_bag-059a2213a0a71d2e07fa6f66e39e0b8da2fa5d75";
  });
in
{
  rqt_bag = pkg "sha256-UZBQhAxdSV6nqNrefZSu8ESMB7yXUqmLxEhfN+O2II0=" "rqt_bag";
  rqt_bag_plugins = pkg "sha256-v95eh3z05gE+OVHH88XufYgfN8ZaTDDbXbxRLGeebrg=" "rqt_bag_plugins";
}
