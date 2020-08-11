# Self-driving-robotic-car-using-Artificial-Neural-Network
Supervised learning to train a robotic car <br/>
1-prepare-data : prepares data on which the NN is trained <br/>
2-Train-ANN : trains the 3-layered ANN on the data prepared using above code and saves the weight matrices <br/>
3-ANN-move : loads the weight matrices and makes predictions to move the robot along the path <br/>
The car is mounted with a camera-phone and can classify the images as one among forward, left, right, obstacle and zebra-crossing. <br/>
Sample images on which the robotic car was trained on:
![sample](https://github.com/PrajwalKoirala/Self-driving-robotic-car-using-Artificial-Neural-Network/blob/master/Inside-the-Neural-Network-Architecture/sample.png) <br/>
The image taken by camera is first converted into 20X20 grayscale and fed into the network:  (the image below doesnot represent network architecture; rather it is a screenshot from the webapp that streams the video as the robotic car travels along the path)  
![webapp view](https://github.com/PrajwalKoirala/Self-driving-robotic-car-using-Artificial-Neural-Network/blob/master/Demonstration-of-ANN_vehicle-in-web-app/visjs.png)
