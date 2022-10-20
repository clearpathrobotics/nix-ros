{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tork-a";
    repo = "visualization_rwt";
    rev = "6a14ae64aeebe52854a5711816aa56fc0bffe6c6";
    hash = "sha256-0FcKxisV/FC7n5tr40y/cB31e8sXtnhW6FNljEaaRIg=";
    name = "tork-a-visualization_rwt-6a14ae64aeebe52854a5711816aa56fc0bffe6c6";
  });
in
{
  rwt_app_chooser = pkg "sha256-yQ9lS81TdkixtVxAE+KKImZg82RPe5+rrod6vV2/rVU=" "rwt_app_chooser";
  rwt_image_view = pkg "sha256-v8oTV9ZWtTwZ341AypTtr97EJeHTD/o6k54hPYsmLwI=" "rwt_image_view";
  rwt_moveit = pkg "sha256-Y+U2pDOCVC0WD30S/VHpkcrvx/7VW7dxzLSyweZOudM=" "rwt_moveit";
  rwt_nav = pkg "sha256-hw7/hYVjLpv/bZzzZK3aQs42hy1ouBLQdtmT5/TyBus=" "rwt_nav";
  rwt_plot = pkg "sha256-08ViN/CgKI8qwl1oPke354ooDwgr3tzaO5yIUOlOYP0=" "rwt_plot";
  rwt_robot_monitor = pkg "sha256-A6BK7HQa+dPDIjXqkEvKotf1pBOZ8wGykUek38tvJyI=" "rwt_robot_monitor";
  rwt_speech_recognition = pkg "sha256-1AJnTg63O6+0ZwC6Ulw02490i1FYqBbs8aKv1zGO5cs=" "rwt_speech_recognition";
  rwt_steer = pkg "sha256-ZBqPWxC1EzA1fHOJQwAn5/WWVxjVHYWqeuIiAul0iKg=" "rwt_steer";
  rwt_utils_3rdparty = pkg "sha256-S1NRBPVnGYl5//RGfaPjdovkECjhX64bnxRI2dOAxmU=" "rwt_utils_3rdparty";
  visualization_rwt = pkg "sha256-3cruRexM/a6EZqJjRS4oXTWNJoNUdindwDT+TELeg0A=" "visualization_rwt";
}
