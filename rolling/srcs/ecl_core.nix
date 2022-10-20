{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stonier";
    repo = "ecl_core";
    rev = "8d4c7e8946b7ceaba3735ea1bf8b3639d15db77f";
    hash = "sha256-Dv8YquQv+KyJIcm+rKSw+9iBNTV/iBCpfnecKdx9aEk=";
    name = "stonier-ecl_core-8d4c7e8946b7ceaba3735ea1bf8b3639d15db77f";
  });
in
{
  ecl_command_line = pkg "sha256-0rOoPXNkY6U26dMB39t2IjB44typZqO4T5rW2jrEOl8=" "ecl_command_line";
  ecl_concepts = pkg "sha256-hH2MIha8e5l0G1CqvBSjisV52RKAkaE0J9ZtGpxM9EM=" "ecl_concepts";
  ecl_containers = pkg "sha256-943O8bp1zs58toB05o+e+e5rOiiB7i0OAWEjrbjQ7Ng=" "ecl_containers";
  ecl_converters = pkg "sha256-hZthKv3t/fhEc7ubch+5EneflAc54IyTtCuBW4vzaF0=" "ecl_converters";
  ecl_core = pkg "sha256-/qmRsU0lb8R70sW/g5572zrbdGlRSBu3BL+GhX77UII=" "ecl_core";
  ecl_core_apps = pkg "sha256-s2Ebyn5n1kiUIFSZ3pa4Ycrcv+Zxp6fh/XBk2xxjWbI=" "ecl_core_apps";
  ecl_devices = pkg "sha256-GoxSzxAM6VgofH6QaMLxUh4aRIcp7T1eCnFf5DFGj4o=" "ecl_devices";
  ecl_eigen = pkg "sha256-tkEm2XgT3kJqdj/+L317KVB0SOyCjRKuLqsOWToPxbo=" "ecl_eigen";
  ecl_exceptions = pkg "sha256-vSUx0IaohNthgxC/EHPPCyDY6YrVAcZUT4u5L099eA4=" "ecl_exceptions";
  ecl_filesystem = pkg "sha256-bxyFE4WWkXQBX7ZNK44thf7SQfQNjNmuLtOSbT6wux8=" "ecl_filesystem";
  ecl_formatters = pkg "sha256-KJ9Xhcl2ACKk7qJz2OTu+dVkgzMcvIBEwmXdl0NaiKg=" "ecl_formatters";
  ecl_geometry = pkg "sha256-XXr9pl1hLn7gS04rAzdTRXa+Fe0p4Mn7sC0scLWC2Zc=" "ecl_geometry";
  ecl_ipc = pkg "sha256-VScic0GudpLDyw3R7bdxdgKjaPeyx0ynFGMpfB66eRo=" "ecl_ipc";
  ecl_linear_algebra = pkg "sha256-cQHYDpaYcb2OhysnJ0jMbP5bAqFMTH0nMum9FVlXPqQ=" "ecl_linear_algebra";
  ecl_manipulators = pkg "sha256-j4N9o2WdJw2z5S3aPFq7sucbVeccSc1FtT1b+xy+xCc=" "ecl_manipulators";
  ecl_math = pkg "sha256-FJevrMf2MxF+heenjke0paV5yAvePcxmHcEW7Is+Pmc=" "ecl_math";
  ecl_mobile_robot = pkg "sha256-NQJy3LdrqwiDAynl1fLCbDJz/A4qCxq6VpeaO+fr/4Y=" "ecl_mobile_robot";
  ecl_mpl = pkg "sha256-b7VJovFqbuLBco3qEl5r57uuO7wTyZrjQSNR6hNX00k=" "ecl_mpl";
  ecl_sigslots = pkg "sha256-c5lvTwI1CTmfeMKJsCuyr/ilN2KWeABt+RYdAxB9cdI=" "ecl_sigslots";
  ecl_statistics = pkg "sha256-znVdvA/1rSX25k4ZeeWg3ageP91ua9cDRosJ2FCTUyo=" "ecl_statistics";
  ecl_streams = pkg "sha256-UREdCl9CWi5sLfJO2LwqWTxA5lC6FvZH1zaOs2BVzGM=" "ecl_streams";
  ecl_threads = pkg "sha256-4lhOg9DicobrUw8Xel3vSP7jrgFI9obXn6dYbQEyFHA=" "ecl_threads";
  ecl_time = pkg "sha256-SC1B6uuNMjWdHD10L5nXdVvgkguZSiwRc1i/zONxu5E=" "ecl_time";
  ecl_type_traits = pkg "sha256-s8Qksqd5xzvMghgqo0aQ6r0Oyou3x5hgXLB5t3MvZVk=" "ecl_type_traits";
  ecl_utilities = pkg "sha256-lr/gRtkjgtYbXIMwa5OUbaSehxs5kKRTATWgZooFnRA=" "ecl_utilities";
}
