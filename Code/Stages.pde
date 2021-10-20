boolean stage1, spawner;
int Progress, spawn;
boolean[] checkpoint = new boolean[10];


Torch Torch1;
Torch Torch2;
Torch Torch3;
Torch Torch4;
Torch Torch5;

void StageSet() {
  for (int i = 0; i<checkpoint.length; i++) {
    checkpoint[i] = true;
  }
  Torch1 = new Torch(width-(width/4)*4, height/2);
  Torch2 = new Torch(width-(width/4)*3, height/2);
  Torch3 = new Torch(width-(width/4)*2, height/2);
  Torch4 = new Torch(width-width/4, height/2);
  Torch5 = new Torch((width/4)*4, height/2);
  player1 = new thePlayer(width/3, height/1.5);
  barrier = new Barrier(width+width/10);
  bat = new Bat(width+width/4);
  gob = new Goblin(width);
  skel = new Skeleton(width+width/10);
  zom = new Zombie(width+width/10);
  bad = new Badguy(width+width/5);
}

void Stage1() {
  textSize(100);
  fill(255);
  //text(Progress,width/2, height/5);
  fill(255);
  rect(width/2.25, height/1.75, 3, 3);

  if (Progress==60&&checkpoint[1]) {
    spawner=true;
    if (spawner) {
      spawn=  1;
      checkpoint[1] = false;
    }
  }
  if (Progress==320&&checkpoint[2]) {
    spawner=true;
    if (spawner) {
      spawn=  int(random(1,3));
      checkpoint[2] = false;
    }
  }
  if (Progress==450&&checkpoint[3]) {
    spawner=true;
    if (spawner) {
      spawn=  int(random(2,4));
      checkpoint[3] = false;
    }
  }
  if (Progress==580&&checkpoint[4]) {
    spawner=true;
    if (spawner) {
      spawn=  int(random(3,5));
      checkpoint[4] = false;
    }
  }
  if (Progress==700*4&&checkpoint[5]) {
    spawner=true;
    if (spawner) {
      spawn=  int(random(2,6));
      checkpoint[5] = false;
    }
  }
  if (Progress==820&&checkpoint[6]) {
    spawner=true;
    if (spawner) {
      spawn=  int(random(2,6));
      checkpoint[6] = false;
    }
  }
  if (Progress==950&&checkpoint[7]) {
    spawner=true;
    if (spawner) {
      spawn=  int(random(2,6));
      checkpoint[7] = false;
    }
  }
  if (Progress==1080&&checkpoint[8]) {
    spawner=true;
    if (spawner) {
      spawn=  int(random(2,6));
      checkpoint[8] = false;
    }
  }
  if (Progress==1200&&checkpoint[9]) {
    spawner=true;
    if (spawner) {
      spawn= 6;
      checkpoint[9] = false;
    }
  }

  Torch1.display();
  Torch2.display();
  Torch3.display();
  Torch4.display();
  Torch5.display();
  theground();
  player1.display();
  //player1.HitBox();
  barrier.barrier();
  bat.attack();
  bat.bat();
  gob.goblin();
  gob.attack();
  skel.skellin();
  skel.attack();
  zom.zombo();
  zom.attack();
  bad.baddie();
  bad.combat();
}

void StageControl() {
  player1.control();
  if (blocked==false) {
    if(spawnedB){
    barrier.approach();
    }
    move();  
    Torch1.torchmove();
    Torch2.torchmove();
    Torch3.torchmove();
    Torch4.torchmove();
    Torch5.torchmove();
  }
}
