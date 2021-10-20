PImage ground1;
PImage ground2;

int groundx = 0;
int groundx2;
int groundx3;
int groundx4;
int groundx5;

void setup() {
  ground1 = loadImage("ground1.png");
  ground2 = loadImage("ground2.png");
  size(2000, 1500);
  //fullScreen();
  groundx2 = 0+width/3;
  groundx3 = 0+(width/3)*2;
  groundx4 = 0+(width/3)*3;
  groundx5 = 0+(width/3)*4;
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(1);
  line(width, height/4, width, height);
  line(0, height/4, 0, height);
  ground1.resize(width/3, height/5);
  ground2.resize(width/3, height/5);
  //tint(255,255,255);
  image(ground1, groundx, height/1.25);
  //tint(200,150,150);
  image(ground2, groundx2, height/1.25);
  //tint(150,200,150);
  image(ground1, groundx3, height/1.25);
  //tint(150,150,200);
  image(ground2, groundx4, height/1.25);
  //tint(200,200,100);
  image(ground1, groundx5, height/1.25);
  if (groundx<(-width/3)) {
    groundx = width+width/3;
  }
  if (groundx2<(-width/3)) {
    groundx2 = width+width/3;
  }
  if (groundx3<(-width/3)) {
    groundx3 = width+width/3;
  }
  if (groundx4<(-width/3)) {
    groundx4 = width+width/3;
    println(groundx4);
  }
  if (groundx5<(-width/3)) {
    groundx5 = width+width/3;
  }
  //
  if (groundx>width+width/3) {
    groundx = -width/3;
  }
  if (groundx2>width+width/3) {
    groundx2 = -width/3;
  }
  if (groundx3>width+width/3) {
    groundx3 = -width/3;
  }
  if (groundx4>width+width/3) {
    groundx4 = -width/3;
  }
  if (groundx5>width+width/3) {
    groundx5 = -width/3;
  }
  println(groundx, groundx4, groundx5);
  println(width/3);
}

void keyPressed() {
  if (key=='d') {
    groundx-=width/210;
    groundx2-=width/210;
    groundx3-=width/210;
    groundx4-=width/210;
    groundx5-=width/210;
  }
  if (key=='a') {
    groundx+=width/210;
    groundx2+=width/210;
    groundx3+=width/210;
    groundx4+=width/210;
    groundx5+=width/210;
  }
}
