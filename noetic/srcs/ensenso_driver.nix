{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ensenso";
    repo = "ros_driver";
    rev = "f573399d6dca6567ebf37a4f19d695aa5bfdfda8";
    hash = "sha256-30m8HAxqHxs0Lu416jgVaNWzMH8D/Et/cWe0cFkgq2M=";
    name = "ensenso-ros_driver-f573399d6dca6567ebf37a4f19d695aa5bfdfda8";
  });
in
{
  ensenso_camera = pkg "sha256-VodY0nMFpPwv4H3kB8ezrqb+a3EFi+cqghOj/rpY7Ic=" "ensenso_camera";
  ensenso_camera_msgs = pkg "sha256-LFnACaDzsu+EUBE2i1FmUzX5OgfBhMC9tVYkZHrkZPo=" "ensenso_camera_msgs";
  ensenso_camera_test = pkg "sha256-NgampxciA16Ocx8NDqfuCH6GeNN9tnWXZCOThfnVQ+w=" "ensenso_camera_test";
  ensenso_description = pkg "sha256-kqh6dLT9ofXjlMEH1/jYPaayTLsvvaoAn6aEIQdlPNE=" "ensenso_description";
  ensenso_driver = pkg "sha256-LlM1VYKFdJXBRtqewPiCV5dcG3fI+SpEfPsA40hyEBE=" "ensenso_driver";
}
