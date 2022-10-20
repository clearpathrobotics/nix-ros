{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "ros2_tracing";
    rev = "0d79e0210eb976ed94dd30c640432a1b4bd76766";
    hash = "sha256-ZM5NZoC2aO1OnwWnWw017dhvPkaf65CjqANJEdqu9kk=";
    name = "ros2-ros2_tracing-0d79e0210eb976ed94dd30c640432a1b4bd76766";
  });
in
{
  ros2trace = pkg "sha256-ebFY9CqSGa8S7ilM0Y3y2LdzDVa/afjMNBi1JgjnDXA=" "ros2trace";
  test_tracetools = pkg "sha256-mX4/UnNFKU9WwHQFx0FGKPYIXR9FaSdBGy7k02Wb4WU=" "test_tracetools";
  test_tracetools_launch = pkg "sha256-2W17ZpLB8wrYVDn0PZJ3GHxTdqmVYZy8kP2xH2t/ZYQ=" "test_tracetools_launch";
  tracetools = pkg "sha256-H3ampO1hdr8q4pZrGRuWIJh2ZMO+CvNHCtx9a2gINfI=" "tracetools";
  tracetools_launch = pkg "sha256-CchnYerRN7cMh07WUA0v46XB8+aF9lshraJ+p7yW7Yc=" "tracetools_launch";
  tracetools_read = pkg "sha256-zIWKw8n7MnBJMlvq1CxX8Nm+zAY9CoKrbgb4nq0pXBY=" "tracetools_read";
  tracetools_test = pkg "sha256-hqJO1gcbi8L99xuW5czJhQWxFSmrc9WZpFRES7omCAU=" "tracetools_test";
  tracetools_trace = pkg "sha256-SMoO6SpaZRbICLRG7NuQS9nhtKCpfjOen/MfyQmDZYs=" "tracetools_trace";
}
