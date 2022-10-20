{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PickNikRobotics";
    repo = "generate_parameter_library";
    rev = "77f7cb0f627efca74fc11ce4a349f337e75f4bf4";
    hash = "sha256-SFYWlVHLISqpntjPuRlcoQcblnAA1rn67Zm08TWvX44=";
    name = "PickNikRobotics-generate_parameter_library-77f7cb0f627efca74fc11ce4a349f337e75f4bf4";
  });
in
{
  generate_parameter_library = pkg "sha256-VmMerTXQw4RteOVX+iFYdhUayOvyAxgVgIoHQnEmyPI=" "generate_parameter_library";
  generate_parameter_library_example = pkg "sha256-lvxdLGpA6R9lyR1zQxgHQD4PB0Ub4soVHIUJD0K8ACE=" "example";
  generate_parameter_library_py = pkg "sha256-SFJzkpLIn5RFJjM4DjYgPr9no60GHnIqobRBh9P6BuE=" "generate_parameter_library_py";
  parameter_traits = pkg "sha256-4MSxx/ImpiGo962F7wiFfvvKOVkrxX3gUAQBlo/v5WU=" "parameter_traits";
}
