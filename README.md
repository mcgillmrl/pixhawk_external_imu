# pixhawk_external_imu
Using a pixhawk as an external imu for the MRL robots.

## Installing
Install dependencies with the following commands (replace `melodic` with your ros version)

    sudo apt install ros-melodic-mavros ros-melodic-mavros-msgs ros-melodic-mavros-extras
    pip install mavproxy

## Running

To launch
 
     roslaunch pixhawk_external_imu apm2.launch
  
  This will also create a proxy for conencting with QGroundControl or [MAVProxy](https://github.com/ArduPilot/MAVProxy) (on udp port 14560). An example connecting with MAVProxy
  
     mavproxy.py --master="udpout:127.0.0.1:14560" 
     
 Using MAVProxy we can calibrate the different sensors through a [command line interface](http://ardupilot.github.io/MAVProxy/html/uav_configuration/calibration.html)
