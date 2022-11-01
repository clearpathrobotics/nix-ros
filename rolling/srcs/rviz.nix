{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rviz";
    rev = "9b360e0701a312e87331fb96cd7c771d5ebcd6ce";
    hash = "sha256-8RVruDxkz1md5JsoQRGSyC+rsFacl4XTUvbUJVGuDQM=";
    name = "ros2-rviz-9b360e0701a312e87331fb96cd7c771d5ebcd6ce";
  });
in
{
  rviz2 = pkg "sha256-0H2PKw5fW2HNbexLdEzgWay1YQnnOubTA2mQYGJ0NFM=" "rviz2";
  rviz_assimp_vendor = pkg "sha256-fOff31lD0hnp2+tFyrpRF0uyKGMfPPrlnRiETHWVXvU=" "rviz_assimp_vendor";
  rviz_common = pkg "sha256-NKy/RReReM+A8SuT6hXQFxgi0bxtAbCgdRKu4VXumq0=" "rviz_common";
  rviz_default_plugins = pkg "sha256-+XkzSBwD1p04b7Qo9Yckh/JwFQtH4IXfzkhS8wTvpi8=" "rviz_default_plugins";
  rviz_ogre_vendor = pkg "sha256-T7KsBgezBlPVuwGfWAqRytTmKtI1Q15k3doXD0tnhvQ=" "rviz_ogre_vendor";
  rviz_rendering = pkg "sha256-UWciYPcY9bSZVR8QKOI4VUZ5+7yQmRVYiz2c+SJII1I=" "rviz_rendering";
  rviz_rendering_tests = pkg "sha256-gAAHBHkVlJ/KGephwb6u+vITU3fheb4odtR+mZBXKEM=" "rviz_rendering_tests";
  rviz_visual_testing_framework = pkg "sha256-z1Ndh/EhlBZCGbQIeTg2i7PipDylaP/MBHWpOBIOXUw=" "rviz_visual_testing_framework";
}
