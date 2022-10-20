{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "moveit_visual_tools";
    rev = "5e088415d14ed9becda154fd3cb73bb85041abe2";
    hash = "sha256-+H+v0MyOj6KTxU3lGUr/DoFJlZY7J6zstGiceL/Fcqs=";
    name = "ros-planning-moveit_visual_tools-5e088415d14ed9becda154fd3cb73bb85041abe2";
  });
in
{
  moveit_visual_tools = pkg "sha256-+H+v0MyOj6KTxU3lGUr/DoFJlZY7J6zstGiceL/Fcqs=" ".";
}
