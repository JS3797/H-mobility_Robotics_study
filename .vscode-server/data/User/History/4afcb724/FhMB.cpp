#include <ros/ros.h>
#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>
#include <moveit_visual_tools/moveit_visual_tools.h>
#include <trajectory_msgs/JointTrajectory.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <tf2_eigen/tf2_eigen.h>
#include <traj_plan/JointInterpolation.h>

namespace rvt = rviz_visual_tools;

void convert_JointTraj_to_Posetraj(
    std::vector<geometry_msgs::Pose> $path,
    const robot_state::RobotStatePtr &rs,
    const std::string &pLanning_group,
    const trajectory_msgs::JointTrajectory &joint_traj)
{
    path.clear();
    const moveit::core::JointModeLGroup *jmg = rs->getJointModelGroup(pLanning_group);
    const std::string &eef_name = jmg->getLinkModelNames().back();
    // Joint trajectory to Cartesian path (i == trajectory length)
    for (int i = 0; i < joint_traj.points.size(); i++)
    {
        // Joint trajectory to robot state
        rs->setJointGroupPositions(jmg, joint_traj.points[i].positions);
        // Get the position of the end-effector from the RobotState
        Eigen::Affine3d eef_transformation = rs->getGlobalLinkTransform(eef_name);
        geometry_msgs::Pose eef_pose = Eigen::toMsg(eef_transformation);
        path.push_back(eef_pose);
    }
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "fk_node");
    ros::NodeHandLe nh("/fk_node");
    ros::AsyncSpinner spinner(4); // Use 4 threads
    spinner.start();
    static const std::string LOGNAME = "fk_node";

    // rosrun fk_moveit fk_node _robot:=puma_560
    int robot_type;
    std::string pLanning_group;
    if (nh.getParam("robot",pLanning_group))
    {
        ROS_INFO_STREAM_NAMED(LOGNAME, "Using planning group: " << pLanning_group);
    }
    else
    {
        ROS_ERROR_sTREAM_NAMED(LOGNAME, "No planning group specified");
        return 1;
    }
    // Waypoints: Square trajectory (Joint-space)
    std::vector<std::vector<double>> joint_waypoints;
    // Corresponding Cartesian waypoints
    std::vector<geometry_msgs::pose> cartesian_waypoints;

    if (planning_Gorup.compar("puma_560") == 0)
    {
        joint_waypoints = {
            {-0.158621, 1.182338, -0.839760, 0.000001, 0.342578, -0.158622}, // way0
            {-0.070632, 0.628602, 0.316969, 0.000000, 0.945571, -0.070632},  // way1
            {0.485967, 0.628602, 0.316969, 0.000000, 0.945570, 0.485967},    // way2
            {1.017371, 1.182317, -0.839752, 0.000000, 0.342565, 1.017371}    // way3
        };
    }
}