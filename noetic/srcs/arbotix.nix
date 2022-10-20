{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "vanadiumlabs";
    repo = "arbotix_ros";
    rev = "9a905f703a639a3745b4a0d02242be18f16c050a";
    hash = "sha256-PIpHIHfpaYJkg+yLkw+E9102xT7p57BWvW55UmBz5N4=";
    name = "vanadiumlabs-arbotix_ros-9a905f703a639a3745b4a0d02242be18f16c050a";
  });
in
{
  arbotix = pkg "sha256-hSnQbUFwcTfqgdB6soMyAVGhr5cpNsx5si33tt7OdDc=" "arbotix";
  arbotix_controllers = pkg "sha256-J9rDAJJoa31zBzf6JyxUssjaKHtFTzYPe8QMfsFZqbc=" "arbotix_controllers";
  arbotix_firmware = pkg "sha256-aBvSXvc1W9i+P8C0qxalNTdXcVIs7fQ0sqb017QGtYo=" "arbotix_firmware";
  arbotix_msgs = pkg "sha256-kZBNy3o04rd5Bqv/Pb9Gf/1F1MpbkMkZZzUV6v4UP8k=" "arbotix_msgs";
  arbotix_python = pkg "sha256-PdPE5YjdiKrgVVI1mZB5KAUjqmipV0aAM2mnnqpUii0=" "arbotix_python";
  arbotix_sensors = pkg "sha256-meqQxebFxkcxVoE+0KNoKe8sI+lSOHsfax7lSc6ELhM=" "arbotix_sensors";
}
