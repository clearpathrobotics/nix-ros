{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rcl";
    rev = "0e41255e5522c8636a4691312009eae4920fe114";
    hash = "sha256-aA7olnCadkmioNmERdsIIMZWfW9BZvUZ1o3+osCsmQU=";
    name = "ros2-rcl-0e41255e5522c8636a4691312009eae4920fe114";
  });
in
{
  rcl = pkg "sha256-e/82FItwUATob88tXy8yhA3AKxAnHgzGa+3WXMO4yv8=" "rcl";
  rcl_action = pkg "sha256-FhABu99nFzPu4safaRYwzNBRNWyf55Kwi0xWrE1/ZDE=" "rcl_action";
  rcl_lifecycle = pkg "sha256-6RoSc9W/EzNEMI6LQm5pDhjvUJzh4l+9/nK/hyDV6eg=" "rcl_lifecycle";
  rcl_yaml_param_parser = pkg "sha256-9iWgU+IgiRICgrI5pEN52EYwqA411VFNRKJGXAUFmOI=" "rcl_yaml_param_parser";
}
