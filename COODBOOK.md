# Background information of the features covered
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and timeBodyAccelerometerJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometer-XYZ, frequencyBodyAccelerometerJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAccelerometerMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

# In total, the following 68 variables are listed in the data set:
  1. timeBodyAccelerometer-mean( )-X                
  2. timeBodyAccelerometer-mean( )-Y                
  3. timeBodyAccelerometer-mean( )-Z                
  4. timeBodyAccelerometer-std( )-X                 
  5. timeBodyAccelerometer-std( )-Y                 
  6. timeBodyAccelerometer-std( )-Z                 
  7. timeGravityAccelerometer-mean( )-X             
  8. timeGravityAccelerometer-mean( )-Y             
  9. timeGravityAccelerometer-mean( )-Z             
  10. timeGravityAccelerometer-std( )-X              
  11. timeGravityAccelerometer-std( )-Y              
  12. timeGravityAccelerometer-std( )-Z              
  13. timeBodyAccelerometerJerk-mean( )-X            
  14. timeBodyAccelerometerJerk-mean( )-Y            
  15. timeBodyAccelerometerJerk-mean( )-Z            
  16. timeBodyAccelerometerJerk-std( )-X             
  17. timeBodyAccelerometerJerk-std( )-Y             
  18. timeBodyAccelerometerJerk-std( )-Z             
  19. timeBodyGyroscope-mean( )-X                    
  20. timeBodyGyroscope-mean( )-Y                    
  21. timeBodyGyroscope-mean( )-Z                    
  22. timeBodyGyroscope-std( )-X                     
  23. timeBodyGyroscope-std( )-Y                     
  24. timeBodyGyroscope-std( )-Z                     
  25. timeBodyGyroscopeJerk-mean( )-X                
  26. timeBodyGyroscopeJerk-mean( )-Y                
  27. timeBodyGyroscopeJerk-mean( )-Z                
  28. timeBodyGyroscopeJerk-std( )-X                 
  29. timeBodyGyroscopeJerk-std( )-Y                 
  30. timeBodyGyroscopeJerk-std( )-Z                 
  31. timeBodyAccelerometerMagnitude-mean( )         
  32. timeBodyAccelerometerMagnitude-std( )          
  33. timeGravityAccelerometerMagnitude-mean( )      
  34. timeGravityAccelerometerMagnitude-std( )       
  35. timeBodyAccelerometerJerkMagnitude-mean( )     
  36. timeBodyAccelerometerJerkMagnitude-std( )      
  37. timeBodyGyroscopeMagnitude-mean( )             
  38. timeBodyGyroscopeMagnitude-std( )              
  39. timeBodyGyroscopeJerkMagnitude-mean( )         
  40. timeBodyGyroscopeJerkMagnitude-std( )          
  41. frequencyBodyAccelerometer-mean( )-X           
  42. frequencyBodyAccelerometer-mean( )-Y           
  43. frequencyBodyAccelerometer-mean( )-Z           
  44. frequencyBodyAccelerometer-std( )-X            
  45. frequencyBodyAccelerometer-std( )-Y            
  46. frequencyBodyAccelerometer-std( )-Z            
  47. frequencyBodyAccelerometerJerk-mean( )-X       
  48. frequencyBodyAccelerometerJerk-mean( )-Y       
  49. frequencyBodyAccelerometerJerk-mean( )-Z       
  50. frequencyBodyAccelerometerJerk-std( )-X        
  51. frequencyBodyAccelerometerJerk-std( )-Y        
  52. frequencyBodyAccelerometerJerk-std( )-Z        
  53. frequencyBodyGyroscope-mean( )-X               
  54. frequencyBodyGyroscope-mean( )-Y               
  55. frequencyBodyGyroscope-mean( )-Z               
  56. frequencyBodyGyroscope-std( )-X                
  57. frequencyBodyGyroscope-std( )-Y                
  58. frequencyBodyGyroscope-std( )-Z                
  59. frequencyBodyAccelerometerMagnitude-mean( )    
  60. frequencyBodyAccelerometerMagnitude-std( )     
  61. frequencyBodyAccelerometerJerkMagnitude-mean( )
  62. frequencyBodyAccelerometerJerkMagnitude-std( ) 
  63. frequencyBodyGyroscopeMagnitude-mean( )        
  64. frequencyBodyGyroscopeMagnitude-std( )         
  65. frequencyBodyGyroscopeJerkMagnitude-mean( )    
  66. frequencyBodyGyroscopeJerkMagnitude-std( )     
  67. subject                                       
  68. activity
  
  in which mean(): Mean value / std(): Standard deviation

