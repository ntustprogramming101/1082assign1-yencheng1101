PImage bg;
PImage soil;
PImage groundhog;
PImage life;
PImage soldier;
PImage robot;

float centerX = width/2;
float soldierX = 0;
float soldierY = floor(random(2,6))*80;
float soldierWidth = 80;
float robotX = floor(random(2,8))*80;
float robotY = floor(random(2,6))*80;
float robotWidth=80;
float robotHeight=80;
float rayStartWidth=1;
float rayMaxWidth=40;
float rayEnd=robotX-160;
float rayHeight=10;
float rayStartX=robotX+25;
float rayY=robotY+32;



void setup() {
	size(640, 480, P2D);
	// Enter Your Setup Code Here
  bg= loadImage("img/bg.jpg");
  soil= loadImage("img/soil.png");
  groundhog= loadImage("img/groundhog.png");
  life= loadImage("img/life.png");
  soldier= loadImage("img/soldier.png");
  robot= loadImage("img/robot.png");
  
  }

void draw() {
	// Enter Your Code Here
  background(bg);
  imageMode(CENTER);
  image(soil,width/2,height*2/3);
  
  //grass
    noStroke();
    colorMode(RGB);
    fill(124,204,25);
    rectMode(CORNERS);
    rect(0,145,640,160);
  
  //sun
    stroke(255,255,0);
    strokeWeight(5);
    fill(253,184,19);
    ellipse(590,50,120,120);
  
  //groundhog
    image(groundhog,320,120);
    
  //life
    imageMode(CORNER);
    image(life,10,10);
    image(life,80,10);
    image(life,150,10);
    
  //soldier
    imageMode(CORNER);
    image(soldier,soldierX,soldierY);
    soldierX++;
    if(soldierX >= width){
    soldierX = -soldierWidth;  
    }else{
     soldierX++;
     } 
  
  
  //robot
   image(robot,robotX,robotY);
    
  //ray
    noStroke();
    fill(255,0,0);
    rectMode(CORNER);
    rect(rayStartX,rayY,rayStartWidth,rayHeight,5);
    
    if(rayStartWidth < rayMaxWidth){
      rayStartWidth+=2;
      rayStartX-=2;
    }else{   
      rayStartX-=2;
      if(rayStartX <= rayEnd){
        //reset ray
         rayStartX=robotX+25;
         rayStartWidth=1;
      } else{
          rayStartX-=2;
        }
        
     }


  }
