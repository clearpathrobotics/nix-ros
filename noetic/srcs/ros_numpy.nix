{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "eric-wieser";
    repo = "ros_numpy";
    rev = "b76f79c8dbe3866f39836d1e482d29cb20bb5e82";
    hash = "sha256-kUVefesUkbR6fL+grV9+ewRYovwMNqXm2kfkbblqAPc=";
    name = "eric-wieser-ros_numpy-b76f79c8dbe3866f39836d1e482d29cb20bb5e82";
  });
in
{
  ros_numpy = pkg "sha256-kUVefesUkbR6fL+grV9+ewRYovwMNqXm2kfkbblqAPc=" ".";
}
