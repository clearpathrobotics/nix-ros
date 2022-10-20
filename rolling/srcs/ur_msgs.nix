{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-industrial";
    repo = "ur_msgs";
    rev = "607e50f57f8ad401ac9e8d2f7a286b03981770d1";
    hash = "sha256-JsglE/PolObyk2tuC9viw8JYmRlBJ8Ym7pjb5k+2EyQ=";
    name = "ros-industrial-ur_msgs-607e50f57f8ad401ac9e8d2f7a286b03981770d1";
  });
in
{
  ur_msgs = pkg "sha256-JsglE/PolObyk2tuC9viw8JYmRlBJ8Ym7pjb5k+2EyQ=" ".";
}
