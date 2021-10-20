PImage ground1;
PImage ground2;

int groundx;
int groundx2;
int groundx3;
int groundx4;
int groundx5;

boolean groundset=true;
void loadground() {
}

void theground() {  
  if (groundset) {
    groundx2 = 0+width/3;
    groundx3 = 0+(width/3)*2;
    groundx4 = 0+(width/3)*3;
    groundx5 = 0+(width/3)*4;
    groundset=false;
  }
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
}

void move() {
  if (keyCode==RIGHT) {
    Progress++;
    groundx-=width/200;
    groundx2-=width/200;
    groundx3-=width/200;
    groundx4-=width/200;
    groundx5-=width/200;
    if (spawnedEB) {
      batx-=width/200;
    }
    if (spawnedG) {
      gobx-=width/200;
    }
    if (spawnedS) {
      skelx-=width/200;
    }
    if (spawnedZ) {
      zomx-=width/200;
    }
    if (spawnedK) {
      badx-=width/200;
    }
  }
  if (keyCode==LEFT) {
    Progress--;
    groundx+=width/200;
    groundx2+=width/200;
    groundx3+=width/200;
    groundx4+=width/200;
    groundx5+=width/200;
    if (spawnedEB) {
      batx+=width/200;
    }
    if (spawnedG) {
      gobx+=width/200;
    }
    if (spawnedS) {
      skelx+=width/200;
    }
    if (spawnedZ) {
      zomx+=width/200;
    }
    if (spawnedK) {
      badx+=width/200;
    }
  }
}
