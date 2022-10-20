{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "fada-catec";
    repo = "z_laser_projector";
    rev = "089ad997d61ba7d9b003026d5a7c65398e3e1643";
    hash = "sha256-57DjJhFN+D59vLV4m0Md2fcFb/ApZ1axJFuqizBOux0=";
    name = "fada-catec-z_laser_projector-089ad997d61ba7d9b003026d5a7c65398e3e1643";
  });
in
{
  z_laser_gui = pkg "sha256-HHpj2ESHUjze4dTyc37p0y3IINvWnGyyBZ0e5LhkixU=" "z_laser_gui";
  z_laser_msgs = pkg "sha256-E8Y6OkOCYBEB1XJwCLplHn9SNh3k8ffkUGUydtC6Oss=" "z_laser_msgs";
  z_laser_projector = pkg "sha256-xxY9nyyQgiNDYtjanltgAp0xynL6HdbkzXY+fmOsym4=" "z_laser_projector";
  z_laser_viz = pkg "sha256-ky/Vl3pPrvQRm7y73qFAWxmgtw5Y4ZZCuQWhe2N0ap8=" "z_laser_viz";
  z_laser_zlp1 = pkg "sha256-UelmEezms9EOBpD4y17XKdAKTK1CIQMXmc1fszVAULQ=" "z_laser_zlp1";
}
