#include <stdio.h>
#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

namespace enc = sensor_msgs::image_encodings;

class DepthInfo
{
  ros::NodeHandle nh_;

  image_transport::ImageTransport it_;
  image_transport::Subscriber depth_sub_;
  image_transport::Publisher depth_pub_;

public:
  cv::Mat frame;


  DepthInfo()
    : it_(nh_)
  {
    depth_pub_ = it_.advertise("out", 1);
    depth_sub_ = it_.subscribe("camera/depth/image", 1, &DepthInfo::depthInfoCb, this);
  }


  void depthInfoCb(const sensor_msgs::ImageConstPtr& msg)
  {
    cv_bridge::CvImagePtr cv_ptr;

    try
    {
      cv_ptr = cv_bridge::toCvCopy(msg, enc::TYPE_32FC1);
    }
    catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }

    frame = cv_ptr->image;
    cv::imshow("depth_image", frame);
    cv::waitKey(3);

    depth_pub_.publish(cv_ptr->toImageMsg());

  }
};

int main(int argc, char** argv)
{
  ros::init(argc, argv, "depth_info");
  DepthInfo ic;
  ros::spin();
  return 0;
}
