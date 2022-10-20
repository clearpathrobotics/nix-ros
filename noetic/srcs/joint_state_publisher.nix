{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "joint_state_publisher";
    rev = "c3e2ad2c8504cfd428732feb20c3abe64127dff9";
    hash = "sha256-Uujl9OIroVGXGbRqhmrqskxi8y7P+HJQVXaFnlNQre8=";
    name = "ros-joint_state_publisher-c3e2ad2c8504cfd428732feb20c3abe64127dff9";
  });
in
{
  joint_state_publisher = pkg "sha256-vrLYB9dIaGetgfOshaHAQBuXOrRs3zusugjb1BUxDnI=" "joint_state_publisher";
  joint_state_publisher_gui = pkg "sha256-SiIPHqHzLmiu6quS4TZmpGH+DnyXhNs7TIOMeTcrXb0=" "joint_state_publisher_gui";
}
