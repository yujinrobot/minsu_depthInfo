#include <stdio.h>
#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <geometry_msgs/Pose.h>

namespace enc = sensor_msgs::image_encodings;

class DepthInfo
{
  ros::NodeHandle nh_;
  ros::Subscriber pos_sub;
  ros::Publisher depth_pos_pub;

  image_transport::ImageTransport it_;
  image_transport::Subscriber depth_sub_;
  image_transport::Publisher depth_pub_;

public:
  cv::Mat frame;
  int posX;
  int posY;

  DepthInfo()
    : it_(nh_), posX(0), posY(0)
  {
    depth_pub_ = it_.advertise("out", 1);
    depth_sub_ = it_.subscribe("camera/depth/image", 1, &DepthInfo::depthInfoCb, this);

    pos_sub = nh_.subscribe("ball_info_pose", 1, &DepthInfo::depthInfoPoseCb, this);
    depth_pos_pub = nh_.advertise<geometry_msgs::Pose>("depth_info_dist", 1);

  }

  void depthInfoPoseCb(const geometry_msgs::Pose& pos)
  {
	posX = pos.position.x;
	posY = pos.position.y;
	std::cout << "pos (" << posX << " , " << posY << ") : "<< frame.at<float>(posY, posX) << std::endl;

	geometry_msgs::Pose distance;
	distance.position.x = posX;
	distance.position.y = posY;
	distance.position.z = frame.at<float>(posY, posX);	//detection distance

	//if ( std::isnan(distance.position.z) ) {
	//	distance.position.z = frame.at<float>(posY+1, posX+1);
	//}

	depth_pos_pub.publish(distance);					// distance publish
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

    //cv::imshow(WINDOW, cv_ptr->image);
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
