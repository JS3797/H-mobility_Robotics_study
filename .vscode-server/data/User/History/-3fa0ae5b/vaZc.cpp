#include <ros/ros.h>
#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>
#include <moveit_msgs/DisplayRobotState.h>
#include <moveit_msgs/DisplayTrajectory.h>
#include <moveit_msgs/AttachedCollisionObject.h>
#include <moveit_msgs/CollisionObject.h>
#include <moveit_visual_tools/moveit_visual_tools.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>

namespace rvt = rviz_visual_tools;

int main(int argc, char **argv)
{
    ros::init(argc, argv, "my_puma");
    ros::NodeHandle nh("/my_puma");
    ros::AsyncSpinner spinner(4); // Use 4 threads
    spinner.start();

    // Setup
    // ^^^^^
    static const std::string PLANNING_GROUP ="puma_560"; // == joint model group
    static const std::string LOGNAME = "my_puma_tutorial";
    ROS_INFO_STREAM_NAMED(LOGNAME, "Starting MoveIt Tutorials...");


    
}