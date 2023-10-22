#ifndef ENCODER_
#define ENCODER_

#include <iostream>
#include <stdint.h>

#include "ros/ros.h"
#include "geometry_msgs/TwistStamped.h"

using namespace std;

namespace encoder
{
    class Encoder
    {
    public:
        Encoder(ros::NodeHandle nh);
        ~Encoder();

    private:
        ros::NodeHandle nh_;

    public:
        //Encoder 신호(각도)를 받는 subscriber를 선언한다.
        ros::Subscriber encoder_signal_subscriber_;
        //Encoder 신호를 받는 subscriber의 callback 함수를 선언한다.
        void signalCb(const geometry_msgs::TwistStamped& signal_msg);
        //각도의 미분을 위한 변수들을 선언한다.
        double time_prev_;
        double angle_prev_;
        int count_;
        //계산된 속도값을 보내는 publisher를 선언한다.
        ros::Publisher velocity_value_publisher_;
    };
}

#endif