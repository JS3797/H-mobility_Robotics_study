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
}