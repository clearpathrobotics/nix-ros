{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "cob_navigation";
    rev = "051ac5e587e63af31d423d5ee2844290fa3f94f4";
    hash = "sha256-5fsmIGdZPQsZ9kGFfAmo0zsLAzJksDbgpoTIR0yYb+0=";
    name = "ipa320-cob_navigation-051ac5e587e63af31d423d5ee2844290fa3f94f4";
  });
in
{
  cob_linear_nav = pkg "sha256-JHWoWmuabJ3cIiaPJG57Sq3OnZ3DsWwMMFYUE44F7FE=" "cob_linear_nav";
  cob_map_accessibility_analysis = pkg "sha256-pvQJhodLAA38A3f9SV0sRLif/kbIEHVADaFm9EeTvS4=" "cob_map_accessibility_analysis";
  cob_mapping_slam = pkg "sha256-e+Qll9h+MmljZLuY89bFaVR/yOHYbDCCb3W+nGrj9So=" "cob_mapping_slam";
  cob_navigation = pkg "sha256-gsu/K16xLLx8IM0vqglHmqmegvBKeQj673V8NigpHnk=" "cob_navigation";
  cob_navigation_config = pkg "sha256-dpNsIda1iXzS9phXSg204jrzteXvyJbMJvLTOoZkuIQ=" "cob_navigation_config";
  cob_navigation_global = pkg "sha256-2BHxTmojVrZy8bweIbuKLK9SXzGrFC/AAAZP8XLQnyQ=" "cob_navigation_global";
  cob_navigation_local = pkg "sha256-Rl0Eggc3eIkTWlJN6cDWPssd9p0oh0TcMKbdYNNUS/E=" "cob_navigation_local";
  cob_navigation_slam = pkg "sha256-qHHTDfHjhrE9guc92Ow7gTWGeVXTJ3M7fVYuZeQWp80=" "cob_navigation_slam";
}
