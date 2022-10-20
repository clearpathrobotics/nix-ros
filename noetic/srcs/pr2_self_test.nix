{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PR2";
    repo = "pr2_self_test";
    rev = "886d78c20cba72b266652e4df30a1f9eb7ddc9ca";
    hash = "sha256-HSUY+fndQ/nNC8AWhxSflvXI7pFx0w8ZRQ6H7epovr8=";
    name = "PR2-pr2_self_test-886d78c20cba72b266652e4df30a1f9eb7ddc9ca";
  });
in
{
  joint_qualification_controllers = pkg "sha256-2CtZ1mS9A81HjEI8UZRDJGPRtIloptH0K1X4yPpHn6I=" "joint_qualification_controllers";
  pr2_bringup_tests = pkg "sha256-mGA3SQ2YUu5uhY3ucL7JS3QLlFen9+Y/RhsGr+B3B9o=" "pr2_bringup_tests";
  pr2_counterbalance_check = pkg "sha256-tB8NOl7DItwEmUfguWtbaeK+QQPJ7MZoY/aoKuB0xGo=" "pr2_counterbalance_check";
  pr2_motor_diagnostic_tool = pkg "sha256-/Bng2dHDADjbpIto9cuwBg3B0rwSCOFaLX7CIn9Kq5o=" "pr2_motor_diagnostic_tool";
  pr2_self_test = pkg "sha256-QKGI4UV3Lgp6swZDwW8P8JeEbWs19pBB4OU0AnluY3c=" "pr2_self_test";
  pr2_self_test_msgs = pkg "sha256-NdVcXF4v7qEuv/vIKPeIz9KmpBYNdP1zqfCblCekNOc=" "pr2_self_test_msgs";
}
