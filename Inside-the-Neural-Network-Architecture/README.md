# Inside-the-Neural-Network-Architecture
Visuals of optimal weights saved in the project "Self driving robotic vehicle using ANN".
</br>
</br>
sample.png - Sample images captured by the camera, while the robotic car moves along its path. There are some images for zebra crossing and obstacle ahead of the car which require the car to decide to pause and stop respectively, while some images requires the car to decide to turn left, right or forward.
</br>
neurons.png - Input layer of the neural network has 400 nodes, each for grayscale pixel value of the image being fed into the network. The hidden layer has 150 nodes. 150 images of size 20 * 20 are plotted to have a understanding of the way in which the network has realized the pattern.  
</br>
upvis.png, leftvis.png and zebvis.png - The images show how those 150 hidden nodes response against a position that require/represent forward motion, left motion and zebra-crossing respectively. First subplot in each image is the sample, and following 150 images are for response of 150 hidden nodes.
</br>
Beautiful patterns can be realized by looking at these images. And this gives a better idea of how neaural networks learn patterns.  
