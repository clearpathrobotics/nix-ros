{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "JeroenDM";
    repo = "moveit_opw_kinematics_plugin";
    rev = "26a448d498ee1f9b778a7cd968bfc729564c03fc";
    hash = "sha256-g0QC1kBgyu/5L5KRbn8NtOu6FRQsIhxiwp+Fs9nTbZ8=";
    name = "JeroenDM-moveit_opw_kinematics_plugin-26a448d498ee1f9b778a7cd968bfc729564c03fc";
  });
in
{
  moveit_opw_kinematics_plugin = pkg "sha256-g0QC1kBgyu/5L5KRbn8NtOu6FRQsIhxiwp+Fs9nTbZ8=" ".";
}
