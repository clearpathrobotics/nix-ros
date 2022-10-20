{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ROBOTIS-GIT";
    repo = "DynamixelSDK";
    rev = "f220a1efe3ddaf67c9b37fa8cec011758e838bd7";
    hash = "sha256-RgM+WbBrW+xeoNvPUYvlLhEqgGKSZPCYOb9HNupHTmE=";
    name = "ROBOTIS-GIT-DynamixelSDK-f220a1efe3ddaf67c9b37fa8cec011758e838bd7";
  });
in
{
  dynamixel_sdk = pkg "sha256-KD2Ow8evjrdr0Dgr1DYwR06YHwKcZhsa8cSzoXpVVzw=" "ros/dynamixel_sdk";
  dynamixel_sdk_examples = pkg "sha256-XjfZ3rRCKGbFFFImlPfDBM43596KyMCnQXAZCLe339U=" "ros/dynamixel_sdk_examples";
}
