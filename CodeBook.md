Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency domain signals.

According to the best practices about naming variables, variable names are as follows:

subject                                                    :
      The subject identifier
      
activity                                                   :
      The activity type

timebodyaccelerationmeanxdirection                         :
      The mean of time of the aceleration of the body in X axis direction
      
timebodyaccelerationmeanydirection                         :
      The mean of time of the aceleration of the body in Y axis direction
      
timebodyaccelerationmeanzdirection                         :
      The mean of time of the aceleration of the body in Z axis direction

timebodyaccelerationstandarddeviationxdirection            :
      The standard deviation of time of the aceleration of the body in X axis direction
      
timebodyaccelerationstandarddeviationydirection            :
      The standard deviation of time of the aceleration of the body in Y axis direction
      
timebodyaccelerationstandarddeviationzdirection            :
      The standard deviation of time of the aceleration of the body in Z axis direction
      
timegravityaccelerationmeanxdirection                      :
      The mean of time of the aceleration of the gravity in X axis direction
      
timegravityaccelerationmeanydirection                      :
      The mean of time of the aceleration of the gravity in Y axis direction
      
timegravityaccelerationmeanzdirection                      :
      The mean of time of the aceleration of the gravity in Z axis direction
      
timegravityaccelerationstandarddeviationxdirection         :
      The standard deviation of time of the aceleration of the gravity in X axis direction
      
timegravityaccelerationstandarddeviationydirection         :
      The standard deviation of time of the aceleration of the gravity in Y axis direction
      
timegravityaccelerationstandarddeviationzdirection         :
      The standard deviation of time of the aceleration of the gravity in Z axis direction

timebodyaccelerationjerkmeanxdirection                     :
      The jerk mean of time of the aceleration of the body in X axis direction
      
timebodyaccelerationjerkmeanydirection                     :
      The jerk mean of time of the aceleration of the body in Y axis direction
      
timebodyaccelerationjerkmeanzdirection                     :
      The jerk mean of time of the aceleration of the body in Z axis direction

timebodyaccelerationjerkstandarddeviationxdirection        :
      The jerk standard deviation of time of the aceleration of the body in X axis direction
      
timebodyaccelerationjerkstandarddeviationydirection        :
      The jerk standard deviation of time of the aceleration of the body in Y axis direction
      
timebodyaccelerationjerkstandarddeviationzdirection        :
      The jerk standard deviation of time of the aceleration of the body in Z axis direction
      
timebodygyroscopemeanxdirection                            :
      The mean of time of the gyro of the body in X axis direction
      
timebodygyroscopemeanydirection                            :
      The mean of time of the gyro of the body in Y axis direction
      
timebodygyroscopemeanzdirection                            :
      The mean of time of the gyro of the body in Z axis direction

timebodygyroscopestandarddeviationxdirection               :
      The standard deviation of time of the gyro of the body in X axis direction
      
timebodygyroscopestandarddeviationydirection               :
      The standard deviation of time of the gyro of the body in Y axis direction
      
timebodygyroscopestandarddeviationzdirection               :
      The standard deviation of time of the gyro of the body in Z axis direction

timebodygyroscopejerkmeanxdirection                        :
      The jerk mean of time of the gyro of the body in X axis direction
      
timebodygyroscopejerkmeanydirection                        :
      The jerk mean of time of the gyro of the body in Y axis direction
      
timebodygyroscopejerkmeanzdirection                        :
      The jerk mean of time of the gyro of the body in Z axis direction

timebodygyroscopejerkstandarddeviationxdirection           :
      The jerk standard deviation of time of the gyro of the body in X axis direction
      
timebodygyroscopejerkstandarddeviationydirection           :
      The jerk standard deviation of time of the gyro of the body in Y axis direction
      
timebodygyroscopejerkstandarddeviationzdirection           :
      The jerk standard deviation of time of the gyro of the body in Z axis direction
      
timebodyaccelerationmagnitudemean                          :
      The mean of time of the magnitude of the acceleration of the body
      
timebodyaccelerationmagnitudestandarddeviation             :
      The standard deviation of the magnitude of the acceleration of the body
      
timegravityaccelerationmagnitudemean                       :
      The mean of time of the magnitude of the acceleration of the gravity
      
timegravityaccelerationmagnitudestandarddeviation          :
      The standard deviation of time of the magnitude of the acceleration of the gravity
      
timebodyaccelerationjerkmagnitudemean                      :
      The jerk mean of time of the magnitude of the acceleration of the body
      
timebodyaccelerationjerkmagnitudestandarddeviation         :
      The jerk standard deviation of time of the magnitude of the acceleration of the body
      
timebodygyroscopemagnitudemean                             :
      The mean of time of the magnitude of the gyro of the body
      
timebodygyroscopemagnitudestandarddeviation                :
      The standard deviation of time of the magnitude of the gyro of the body
      
timebodygyroscopejerkmagnitudemean                         :
      The jerk mean of time of the magnitude of the gyro of the body
      
timebodygyroscopejerkmagnitudestandarddeviation            :
      The jerk standard deviation of time of the magnitude of the gyro of the body
      
frequencybodyaccelerationmeanxdirection                    :
      The mean of frequency of the acceleration of the body in X axis direction
      
frequencybodyaccelerationmeanydirection                    :
      The mean of frequency of the acceleration of the body in Y axis direction
      
frequencybodyaccelerationmeanzdirection                    :
      The mean of frequency of the acceleration of the body in Z axis direction
      
frequencybodyaccelerationstandarddeviationxdirection       :
      The standard deviation of frequency of the acceleration of the body in X axis direction
      
frequencybodyaccelerationstandarddeviationydirection       :
      The standard deviation of frequency of the acceleration of the body in Y axis direction
      
frequencybodyaccelerationstandarddeviationzdirection       :
      The standard deviation of frequency of the acceleration of the body in Z axis direction
      
frequencybodyaccelerationjerkmeanxdirection                :
      The jerk mean of frequency of the acceleration of the body in X axis direction
      
frequencybodyaccelerationjerkmeanydirection                :
      The jerk mean of frequency of the acceleration of the body in Y axis direction
      
frequencybodyaccelerationjerkmeanzdirection                :
      The jerk mean of frequency of the acceleration of the body in Z axis direction
      
frequencybodyaccelerationjerkstandarddeviationxdirection   :
      The jerk standard deviation of frequency of the acceleration of the body in X axis direction
      
frequencybodyaccelerationjerkstandarddeviationydirection   :
      The jerk standard deviation of frequency of the acceleration of the body in Y axis direction
      
frequencybodyaccelerationjerkstandarddeviationzdirection   :
      The jerk standard deviation of frequency of the acceleration of the body in Z axis direction
      
frequencybodygyroscopemeanxdirection                       :
      The mean of frequency of the gyro of the body in X axis direction
      
frequencybodygyroscopemeanydirection                       :
      The mean of frequency of the gyro of the body in Y axis direction
      
frequencybodygyroscopemeanzdirection                       :
      The mean of frequency of the gyro of the body in Z axis direction
      
frequencybodygyroscopestandarddeviationxdirection          :
      The standard deviation of frequency of the gyro of the body in X axis direction
      
frequencybodygyroscopestandarddeviationydirection          :
      The standard deviation of frequency of the gyro of the body in Y axis direction
      
frequencybodygyroscopestandarddeviationzdirection          :
      The standard deviation of frequency of the gyro of the body in Z axis direction
      
frequencybodyaccelerationmagnitudemean                     :
      The mean of frequency of the magnitude of the acceleration of the body
      
frequencybodyaccelerationmagnitudestandarddeviation        :
      The standard deviation of frequency of the magnitude of the acceleration of the body

frequencybodybodyaccelerationjerkmagnitudemean             :
      The jerk mean of frequency of the magnitude of the acceleration of the body
      
frequencybodybodyaccelerationjerkmagnitudestandarddeviation:
      The jerk standard deviation of frequency of the magnitude of the acceleration of the body

frequencybodybodygyroscopemagnitudemean                    :
      The mean of frequency of the magnitude of the gyro of the body
      
frequencybodybodygyroscopemagnitudestandarddeviation       :
      The standard deviation of frequency of the magnitude of the gyro of the body

frequencybodybodygyroscopejerkmagnitudemean                :
      The jerk mean of frequency of the magnitude of the gyro of the body
      
frequencybodybodygyroscopejerkmagnitudestandarddeviation   :
      The jerk standard deviation of frequency of the magnitude of the gyro of the body