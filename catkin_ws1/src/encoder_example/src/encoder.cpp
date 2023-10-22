#include "encoder_example/encoder.hpp"

namespace encoder
{
    //Class의 생성자. 인스턴스 생성시 실행되는 부분.
    Encoder::Encoder(ros::NodeHandle nh) : nh_(nh)
    {
        //Encoder 신호(각도)를 받는 subscriber를 정의한다. 수신하는 토픽의 이름은 /encoder/angle
        encoder_signal_subscriber_ = nh_. subscribe("/encoder/angle", 1, &Encoder::signalCb, this);

        //속도 값을 보내는 publisher를 정의한다. 출력되는 토픽의 이름은 /encoder/velocity
        velocity_value_publisher_ = nh_.advertise<geometry_msgs::TwistStamped>("/encoder/velocity", 1);
    }
    Encoder::~Encoder() {}

    //Encoder 신호를 받는 subscriber의 callback 함수를 정의한다.
    void Encoder::signalCb(const geometry_msgs::TwistStamped& signal_msg)
    {
        //현재 시간과 각도 값 선언 및 저장
        double time_now = signal_msg.header.stamp.toSec(); //toSec 함수 : topic의 header에 저장된 시간을 초 단위로 변경.
        double angle_now = signal_msg.twist.angular.z;
        //최초 값을 저장한 이후에 미분을 수행하기 위한 조건문
        if (count_>0)
        {
            //각도 값을 출력한다.
            ROS_INFO_STREAM( "Angle value : " << angle_now);
            //각도를 미분해서 속도를 구한다.
            double velocity = (angle_now - angle_prev_) / (time_now - time_prev_);
            //속도 값을 출력한다.
            ROS_INFO_STREAM( "Velocity value : "<< velocity);
            //속도 값을 보낼 메시지를 선언한다.
            geometry_msgs::TwistStamped msg;
            //현재 시간과 계산한 속도 값을 메시지에 저장한다.
            msg.header.stamp = signal_msg.header.stamp;
            msg.twist.angular.z = velocity;
            //메시지를 publish 한다.
            velocity_value_publisher_.publish(msg);
        }
        time_prev_ = time_now;
        angle_prev_ = angle_now;
        count_++;
    }
}

int main(int argc, char *argv[])
{
    //ROS 노드 초기화
    ros::init(argc, argv, "encoder_example_node");
    ros::NodeHandle nh;
    //인스턴스 생성
    encoder::Encoder e(nh);
    ros::spin();
    return 0;
}