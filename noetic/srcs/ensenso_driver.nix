{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ensenso";
    repo = "ros_driver";
    rev = "fef5e9f304a47f0b863c4beb26ecce2d5224677f";
    hash = "sha256-QviDC6+WQADw8Ocze3TGw+OY4idAmjAsudFqhSthlj0=";
    name = "ensenso-ros_driver-fef5e9f304a47f0b863c4beb26ecce2d5224677f";
  });
in
{
  ensenso_camera = pkg "sha256-VodY0nMFpPwv4H3kB8ezrqb+a3EFi+cqghOj/rpY7Ic=" "ensenso_camera";
  ensenso_camera_msgs = pkg "sha256-LFnACaDzsu+EUBE2i1FmUzX5OgfBhMC9tVYkZHrkZPo=" "ensenso_camera_msgs";
  ensenso_camera_test = pkg "sha256-lymBhzeqbo+vrJWNRmZGm333zrNal4WLr6aSOR3bVBQ=" "ensenso_camera_test";
  ensenso_description = pkg "sha256-kqh6dLT9ofXjlMEH1/jYPaayTLsvvaoAn6aEIQdlPNE=" "ensenso_description";
  ensenso_driver = pkg "sha256-LlM1VYKFdJXBRtqewPiCV5dcG3fI+SpEfPsA40hyEBE=" "ensenso_driver";
}
