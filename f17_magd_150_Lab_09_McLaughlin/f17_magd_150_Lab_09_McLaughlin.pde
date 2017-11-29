int maxImages = 8; 
int imageIndex = 0; 

import processing.video.*;    //This is allowing me to add in a video
Capture video;

import processing.sound.*;
SoundFile song;

PImage[] images = new PImage[maxImages];   //This array lets me cycle through my 8
                                           //images for the project.  
void setup() {
  size(1200, 1480);
  surface.setResizable(true);  //This makes it so the screen can be resized as wanted.
  
  song = new SoundFile(this, "song.mp3");    //This will pull my sound from the data
  song.loop();                               //folder and play it here continuously.  
  
  video = new Capture(this, 640, 480);       //This is the setup for the live capture
  video.start();

  
  PImage Nature2 = loadImage("Nature2.jpg"); //This image was one that did not follow
  image(Nature2, 0, 0);                      //the sizing that most others had, so I
  Nature2.resize(1920, 1280);                //conformed it to be the same size.  
  
  for (int i = 0; i < images.length; i ++ ) {        
    images[i] = loadImage( "Nature" + i + ".jpg" );    
    

  }
}



void draw() {
  
  image(images[imageIndex], 0, 0);    //This will display the images
  
  image(video, 0, 0, 200, 200);       //This displays the camera capture and keeps
    }                                 //it in front of the images.  
    
    void captureEvent(Capture video) {
  video.read();
    }
    
    
void mousePressed() {
  
  imageIndex = int(random(images.length)); //This randomized the images shown and 
}                                          //makes it so that mouse presses change
                                           //the images.  