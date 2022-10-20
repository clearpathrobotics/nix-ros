{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rclc";
    rev = "243ee63ca369f0fb90397ba9ae0ca1283ab16ad3";
    hash = "sha256-IauvO2YxUvwNqI1LgvCg5OXhHVaRWTZn9J1KzL8GLFc=";
    name = "ros2-rclc-243ee63ca369f0fb90397ba9ae0ca1283ab16ad3";
  });
in
{
  rclc = pkg "sha256-3t5cQ7rFoaRqJk34LbMOiyPLmVmxRnsyuv+xX9BYnCM=" "rclc";
  rclc_examples = pkg "sha256-c1sWSOShR9cwIFpufpQC+5TLLKrKxBLsx4u+DGq5alo=" "rclc_examples";
  rclc_lifecycle = pkg "sha256-/8EGKBKHGhItwplssaqldkuCi84YftP+EW2+HUCCgOw=" "rclc_lifecycle";
  rclc_parameter = pkg "sha256-QHccJYB9yauWE0inrFaCACnoeaep6M38al5C6VjP+so=" "rclc_parameter";
}
