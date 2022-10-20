{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-industrial";
    repo = "ros_canopen";
    rev = "e10f4905c6b773f8f31f99b900665a69a6a7678a";
    hash = "sha256-mqplFtDLGyD5VkPW0ki7zWakPVyvMmPjhJwa4kokDps=";
    name = "ros-industrial-ros_canopen-e10f4905c6b773f8f31f99b900665a69a6a7678a";
  });
in
{
  can_msgs = pkg "sha256-4oKS3RVPZe9GU2ZIsmZl3TNrUUqnHk5rq4ho3cx8gu0=" "can_msgs";
  canopen_402 = pkg "sha256-qZc8kKtmORdgiIE++M5FOSuPCi6tsFevkUqQA7zCThs=" "canopen_402";
  canopen_chain_node = pkg "sha256-IgT+QbUwhL/WWa48iiUMBVBG2Ev1IZqiP7dKQMo1BK8=" "canopen_chain_node";
  canopen_master = pkg "sha256-u/ZFxmN2EXcndEoozDsB287cxjPeSmsMxzNN2jgeoig=" "canopen_master";
  canopen_motor_node = pkg "sha256-tQ8X7kIHFRxNrzYQ+14NbtCNCa2YShS4fRt1+X5fM9I=" "canopen_motor_node";
  ros_canopen = pkg "sha256-kQMfJsVFsKgnXM9FheiRVd//HZJVC6rSyzs8sndkBKE=" "ros_canopen";
  socketcan_bridge = pkg "sha256-r/ZrEPhXr3iTlEdsm+HKI3kAjccjzswT4bnzto1ZqwA=" "socketcan_bridge";
  socketcan_interface = pkg "sha256-cMnhwpyAivaQVmKcV1FW3xX8bTu3cElkvS/OXCB4fVA=" "socketcan_interface";
}
