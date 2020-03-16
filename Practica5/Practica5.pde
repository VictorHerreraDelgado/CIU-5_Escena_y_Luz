import queasycam.*;
PShape lamparaMesa,bombilla;
PShape mesa;
PShape floor;
PImage floorImg,bulb;
boolean cameraOn = false; 
boolean lightsOn = false;
int dayTime = 1;
boolean lamp = false;
QueasyCam cam;

void setup(){
  
  cam = new QueasyCam(this);
  size(1000,1000,P3D);
  noStroke();
  sphereDetail(60);
  lamparaMesa = loadShape("lampara escritorio.obj");
  mesa = loadShape("table.obj");
  floorImg = loadImage("floor.png");
  scaleObjs();
  bombilla = createShape(SPHERE,42);
  smooth(4);
}

void draw(){
  background(51);
  textureMode(NORMAL);
  
  //camera(width/2,-height/2,2000, width/2,height/2,0,0,1,0);
  translate(width/2,height/2,0);
  //lights();
  roomLamp();
  if (dayTime == 1)dayMode();
  else if(dayTime == 2) eveningMode();
  else  nightMode();
  // Pon la luz lo primero de todo o no se verá afectado en los objetos.
  //sphere(50);
  createCeiling();
  setLights();
  
  pushMatrix();
  rotateX(radians(180));
  rotateY(radians(180));
  shape(lamparaMesa);
  //sphere(10);
  popMatrix();
  
  pushMatrix();
  translate(0,250,0);
  rotateX(radians(180));
  rotateY(radians(180));
  shininess(-10);
  shape(mesa);
  popMatrix();
  
  setLights();
  createFloor();
  if(lamp)bulbLight();
}


void scaleObjs(){
  
  mesa.scale(5);
  
  
}
void setLights(){
 
 //
 pushMatrix();
 translate(0,-350,+130);
 //emissive(200,200,50);
 //shininess(-100);
 //emissive(255,255,255);
 if(lamp){
   //pointLight(200,200,100,0,1,0);
   pushMatrix();
   translate(0,-10,15);
   ///pointLight(200,200,100,0,0,0);
   spotLight(200,200,100,0,0,0,   0,1,1 , radians(90),1);
   spotLight(200,200,100,0,20,10,   0,-1.30,-1 , radians(65),1);
   popMatrix();
   
 }
 else bombilla.setFill(color(50,50,10));
 
 
 //spotLight(200,200,100,0,0,0,0,50,200,radians(90),-100); 
 
 
 translate(0,350,-130);
 popMatrix();
 
}


void keyReleased(){
  if (key == ' ') cameraOn = !cameraOn; 
  if (key == 'N' || key == 'n') lightsOn = !lightsOn;
  if (key == 'L' || key == 'l') lamp = !lamp;
  if (key == '1') dayTime = 1;
  if (key == '2') dayTime = 2;
  if (key == '3') dayTime = 3;
}
void createCeiling(){
  pushMatrix();
  specular(255,255,255);
  emissive(20,20,20);
  
  translate(0,-1000,0);
  beginShape();
  texture(floorImg);
  vertex(-1500, 0, -1500, 0,   0);
  vertex( 1500, 0,-1500, 1, 0);
  vertex( 1500, 0,1500 ,1, 1);
  vertex(-1500, 0, 1500, 0,   1);
  endShape();
  popMatrix();
}

void createFloor(){
  pushMatrix();
  specular(255,255,255);
  emissive(20,20,20);
  
  translate(0,501,0);
  beginShape();
  texture(floorImg);
  vertex(-1500, 0, -1500, 0,   0);
  vertex( 1500, 0,-1500, 1, 0);
  vertex( 1500, 0,1500 ,1, 1);
  vertex(-1500, 0, 1500, 0,   1);
  endShape();
  popMatrix();
}



void nightMode(){
  ambientLight(0,0,10);
  directionalLight(30, 30, 30, 0, 1, 1);
}

void dayMode(){
  ambientLight(200,200,200);
  directionalLight(255,255, 255, 0, 1, 0);
}

void eveningMode(){
  ambientLight(200,150,100);
  directionalLight(200,150,50,0, 1, -1);
}

void bulbLight(){
  translate(0,-395,+110);
  ambientLight(255,255,100);
  bombilla.setFill(color(255,255,200));
  shape(bombilla);
}
void roomLamp(){
  pushMatrix();
  translate(0,-900,0);
  /*if(!lightsOn) fill(10,10,10);
  else fill(255,255,255);*/
  sphere(30);
  if (lightsOn) pointLight(100, 100, 100, 0, 1, 0);
  popMatrix();
  
}
