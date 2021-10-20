boolean blocked, stable, unstable, attackedB, spawnedB;
int barrierx, barrierHP = 4;
Barrier barrier;
class Barrier {

  Barrier(int TempX) {
    barrierx = TempX;
  }


  void barrier() {
    //spawn
    if (spawnedB== true) {
      stable = true;
    }
    if (spawn==1&&spawner==true) {
      barrierx = width+width/4;
      spawnedB=true;
      spawner=false;
      barrierHP=4;
    }
    if (spawnedB) {
      if (stable||unstable) {
        if (barrierx<width/2) {
          blocked=true;
        } else {
          blocked = false;
        }
      }
    }
    if (barrierHP>2) {
      stable=true;
    } 
    if (barrierHP<=2&&barrierHP>0) {
      stable=false;
      unstable=true;
    }
    if (stable) {
     barriers[0].resize(int(width/2.5), height/3);
        image(barriers[0], barrierx, height/1.58);
    }
    if (unstable) {
      barriers[1].resize(int(width/2.5), height/3);
        image(barriers[1], barrierx, height/1.58);
    }
    rectMode(CENTER);
    //rect(barrierx, height/1.5, width/8, height/3);
    if (barrierHP<=0) {
      spawnedB=false;
      blocked=false;
    }
    if (attack2&&barrierx<width/1.95) {
      attackedB=true;
    }
    if (attackedB&&barrierx<width/1.95) {
      barrierHP--;
      attackedB=false;
      attack2=false;
    }
    if (spawnedB==false) {
      barrierx= width+width/10;
      barrierHP=4;
    }
  }

  void approach() {
    if (spawnedB==true) {
      if (keyCode==RIGHT) {
        barrierx-=width/200;
      }
      if (keyCode==LEFT) {
        barrierx+=width/200;
      }
    }
  }
}
