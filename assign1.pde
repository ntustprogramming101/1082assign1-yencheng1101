PImage bg;
	PImage soil;
	PImage groundhog;
	PImage life;
	PImage soldier;
	PImage robot;
	
	float centerX = width/2;
	float soldierX = 0;
	float soldierY = floor(random(2,6))*80;
	float robotX = floor(random(2,8))*80;
	float robotY = floor(random(2,6))*80;
	float robotWidth=80;
	float robotHeight=80;
	float rayWidth=40;
	float rayHeight=10;
	float rayX;
	float rayY;
	
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
	  if(soldierX+80 >= width){
	  soldierX=0;  
	  }else{
	   soldierX++;
	   } 
	  
	  //ray
	    noStroke();
	    fill(255,0,0);
	    rectMode(CORNER);
	    rect(rayX,rayY,rayWidth,rayHeight,5);
	    rayX+=-2;
	    if(rayX+rayWidth < 0){
	      rayX=robotX+25;
	      rayY=robotY+37;
	      rayX+=-2;
	    }
	    
	  //robot
	    image(robot,robotX,robotY);
	    //robotX 2 pix
	  
	  }
