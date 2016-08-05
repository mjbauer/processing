//This is based on a tutorial from Daniel Shiffman https://www.youtube.com/user/shiffman  http://www.learningprocessing.com

//To make this work you will need to:
//1. Put the image you want to use in the "data" folder in the same folder as the Processing file 
//2. Change the image name on line 16 to the name of your image file
//3. Change the canvas size on line 14 to the size of your image file
//4. Click on the image to save a TIFF file in the same folder as the Processing file
//5. Click multiple times to save many images

PImage img;

void setup() {
  //Set the size to the same dimensions as your source image
  size(564, 564); 
  //Put your image in the "data" folder in the same folder as the Processing file
  img = loadImage("face1.jpg"); 
  background(255); 
}

void draw() {

  for (int i = 0; i < 100; i++) {  
    float x = random(width);
    float y = random(height);
    color c = img.get(int(x), int(y));
    fill(c, random(100, 200));
    noStroke();
    //rect(x, y, 16, 16);

    float w1 = random(22);
    float w2 = random(5);
    float w3 = random(2);
    float w4 = random(12);
    rect(x+random(45), y-random(45), w1, w1);
    rect(x+random(30), y-random(45), w2, w4);
    rect(x+random(25), y-random(45), w3, w3);
    rect(x+random(35), y-random(45), w4, w4);
    rect(x+random(20), y-random(45), w4, w2);

  }
}


void mousePressed() {
  if (mouseButton == LEFT) {
    save("portrait"+round(frameCount)+".tif");
  }
}