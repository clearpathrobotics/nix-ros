{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ament";
    repo = "ament_cmake";
    rev = "799183ab9bcfd9b66df0de9b644abaf8c9b78e84";
    hash = "sha256-RHd/LRKGg9wZOIbZgebtqZUmQhO0kT/KeOn04vApu6c=";
    name = "ament-ament_cmake-799183ab9bcfd9b66df0de9b644abaf8c9b78e84";
  });
in
{
  ament_cmake = pkg "sha256-REIZVeaeoPaofWs2HjYUreK8yHuhb6BQXEPB9wPYw7w=" "ament_cmake";
  ament_cmake_auto = pkg "sha256-LfuwTIuf+ndVLO/P7sVzxi7Tr3TMbV4oaYcRuJ8lMMI=" "ament_cmake_auto";
  ament_cmake_core = pkg "sha256-YNQbLiBQHwNh5U09c5FUDxAbHmXjKs1e7PrDa2HOlR4=" "ament_cmake_core";
  ament_cmake_export_definitions = pkg "sha256-rzHa1GYj2uTp29S+glUm1DNa0tqKl0UmzuJGm23Ev5A=" "ament_cmake_export_definitions";
  ament_cmake_export_dependencies = pkg "sha256-YlpORM6Fg6cvfWtqgz8JBcaTlggJGstbk0paYkkmW5s=" "ament_cmake_export_dependencies";
  ament_cmake_export_include_directories = pkg "sha256-l8sEtHXhVJPrCSwRP0Rc0Ma8vOmepwXFPgUzUwpyah8=" "ament_cmake_export_include_directories";
  ament_cmake_export_interfaces = pkg "sha256-X1Y/ULnoSpwUQ/AoYmpWRsQ7Qp1797TEXaAJyBO5kDA=" "ament_cmake_export_interfaces";
  ament_cmake_export_libraries = pkg "sha256-lUqSzdI/G/NIAgWt6RWn863ReGQanrPliY221s1jT8g=" "ament_cmake_export_libraries";
  ament_cmake_export_link_flags = pkg "sha256-OU88ZMc49bJheh5Rj732cIQTuvBt/9RyPQPAPNKFYGE=" "ament_cmake_export_link_flags";
  ament_cmake_export_targets = pkg "sha256-HOta1r6Sfd2l80t6dED7KVUOTOiZFt2TGMhPaalPC4k=" "ament_cmake_export_targets";
  ament_cmake_gen_version_h = pkg "sha256-Df9zzNXKi1drNxoNpyxv1A31IA3SBMBWkgGbgRFoCC8=" "ament_cmake_gen_version_h";
  ament_cmake_gmock = pkg "sha256-GawVB3i8oe5VRNQH1sxIk6PniVFdfWW6rkqpi20fx20=" "ament_cmake_gmock";
  ament_cmake_google_benchmark = pkg "sha256-AHFpP7CUY0alEEtldxip7ncZMUqEazylzPtjC5JLIGQ=" "ament_cmake_google_benchmark";
  ament_cmake_gtest = pkg "sha256-TikXiTXNlOwgk6zRxVLZOjeQ+f7X9xOxPSSqM0cuqlA=" "ament_cmake_gtest";
  ament_cmake_include_directories = pkg "sha256-ZWs+dbYb8h2r/eUwyjkO9nV6CmQZmts00J0lzwzvZuY=" "ament_cmake_include_directories";
  ament_cmake_libraries = pkg "sha256-2XGtA0iOUpIX9k8TnRDYfuchyHuYpb6Zg244xzeFPlQ=" "ament_cmake_libraries";
  ament_cmake_nose = pkg "sha256-MLxKynW6yGxvPgGoR2hhgkvv4+nHNxatvQAWrLsxyo0=" "ament_cmake_nose";
  ament_cmake_pytest = pkg "sha256-4I8x/p7tkYst1LFCjxG/pUjYnY5WIhBcnDPG53Wj0aE=" "ament_cmake_pytest";
  ament_cmake_python = pkg "sha256-mck3x5AnZQjJ5O40IKU0e8nlLFIOpAEZ7E6JDLfIPtA=" "ament_cmake_python";
  ament_cmake_target_dependencies = pkg "sha256-PMR5LahlwMoNK3joRfKHeIcC+1F/a0WKmfhSHvK6ASU=" "ament_cmake_target_dependencies";
  ament_cmake_test = pkg "sha256-7+Eqfh8fI/oz08shLABgn4tLMsihzaOOO1Lvqf19mas=" "ament_cmake_test";
  ament_cmake_version = pkg "sha256-t2hG3dCVsEsJ3LEsb+k5Tos4kdqlMkt5rzO2qCUEnF0=" "ament_cmake_version";
}
