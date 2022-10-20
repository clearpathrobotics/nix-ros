{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "uos";
    repo = "mesh_tools";
    rev = "b93b1c164115ae08f01183322135ff426d5784f8";
    hash = "sha256-ARC9FIfL/JpEla7OXAOlgXB7jRpiFgr1LZY8Bn82vwU=";
    name = "uos-mesh_tools-b93b1c164115ae08f01183322135ff426d5784f8";
  });
in
{
  hdf5_map_io = pkg "sha256-uGfz9W97JDomrPLt7PKwlP4UGNdee8XJwzovBpzyra8=" "hdf5_map_io";
  label_manager = pkg "sha256-F1WW3pQQyU6piBdNEeYh9EEtJzP6XBV04GgRS3AxSTU=" "label_manager";
  mesh_msgs = pkg "sha256-NMVwNoSMqAd/TbUdDiVx+SIz0yJRUC39yFGTV45bDDY=" "mesh_msgs";
  mesh_msgs_conversions = pkg "sha256-Rv1YVeYnQrUDLYp9gYs5ncrxXz7EBRioT/2U2RFi+PQ=" "mesh_msgs_conversions";
  mesh_msgs_hdf5 = pkg "sha256-Kf9SeFfh5uU41UM+re99mUAJyr+edzyE8/KCkuYqR/U=" "mesh_msgs_hdf5";
  mesh_msgs_transform = pkg "sha256-UxN11H/ZJEyEe87SjJuKjuRMFNfzmddqLKg80qSBp98=" "mesh_msgs_transform";
  mesh_tools = pkg "sha256-/7YGzZMbv0Zu0f6wFeTjlmGwqhdZ9jAzwgbdhAjlyUo=" "mesh_tools";
  rviz_map_plugin = pkg "sha256-Vj+8RPhiT9VYC6JAw5ruF5iJSet2V4gCN173xy+dHLk=" "rviz_map_plugin";
}
