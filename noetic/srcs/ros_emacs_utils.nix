{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "code-iai";
    repo = "ros_emacs_utils";
    rev = "75f833a3b1ac67c8d8635b9415162c7ead08da91";
    hash = "sha256-iD1y5M3bue01od6GATLPgsEDDCwfYyjYlzgBatxnR4A=";
    name = "code-iai-ros_emacs_utils-75f833a3b1ac67c8d8635b9415162c7ead08da91";
  });
in
{
  ros_emacs_utils = pkg "sha256-pPJNq0I8lx6k3KUVU78xKEJFwhNB2bmg/TlFleSVSTw=" "ros_emacs_utils";
  rosemacs = pkg "sha256-17bv+maJ6BGD41+yKflppDwZlIwa1B3WVyMKyE/y12o=" "rosemacs";
  roslisp_repl = pkg "sha256-jM7Q1ERvc5aCPUqrrkOOgqtc4RCJk9Rr/OwaxjCeHek=" "roslisp_repl";
  slime_ros = pkg "sha256-Fb6mw5TgFwQTjAi9hMqX0coIKx6MWWrD0ySKQfN48Hk=" "slime_ros";
  slime_wrapper = pkg "sha256-eqGF3CceyQiHsHP5VrRjV5YqmZVdrflWDUs4qqHSSWc=" "slime_wrapper";
}
