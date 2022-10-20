{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "ros_realtime";
    rev = "3273ad52b47a01fd23391aae2942ef990a9ebec4";
    hash = "sha256-4+qhwRPNPUJv3wIuqpk4UtKTCii8njPJ+PmbHDVNRhU=";
    name = "ros-ros_realtime-3273ad52b47a01fd23391aae2942ef990a9ebec4";
  });
in
{
  allocators = pkg "sha256-Xrw9P38g7FC18YeHwgsMArH7nO633VDFqAs74DoLE6s=" "allocators";
  lockfree = pkg "sha256-APrDjAbpoz4ACj09OwrOzy5ZeGY7MX7pg8sPmWZod2s=" "lockfree";
  ros_realtime = pkg "sha256-j9Xk36gozly/cyVtuLvWcvHeAAFwLHhpaGkH+sAIk90=" "ros_realtime";
  rosatomic = pkg "sha256-+xjGLnELF3OhXp1TesY/exuwe42otRu/u1+letSQUnU=" "rosatomic";
  rosrt = pkg "sha256-o67HpVycvoaaqShn2saZDipkvBMGESBoUVnQghXopSA=" "rosrt";
}
