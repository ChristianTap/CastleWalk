boolean attackedS, spawnedS;
int skelx, skelHP = 3, skeltime, skeltime2;
Skeleton skel;

class Skeleton {

  Skeleton(int TempX) {
    skelx = TempX;
  }

  void attack() {
    if (skelx<=width/2.25&&spawnedS) {
      skeltime++;
      blocked=true;
      if (skeltime>=100) {
        skeltime=0;
        if (defend==false) {
          lives--;
        }
      }
    }
  }


  void skellin() {
    if (spawn==4&&spawner==true) {
      spawnedS=true;
      spawner=false;
    }
    if (spawnedS) {
      if (skelx>width/2.25) {
        skelx-=width/300;
      }
      if (skeltime<80) {
        skeltime2++;
        if (skeltime2>=20) {
          skeltime2=0;
        }
        if (skeltime2<10) {
          skeletons[0].resize(width/3, height/3);
          image(skeletons[0], skelx, height/1.7);
        } else {
          skeletons[1].resize(width/3, height/3);
          image(skeletons[1], skelx, height/1.7);
        }
      } else {
        skeletons[2].resize(width/3, height/3);
        image(skeletons[2], skelx, height/1.7);
      }
      if (attackedS) {
        skelHP--;
        attackedS=false;
      }
      if (attack2&&skelx<width/1.95) {
        attackedS=true;
      }
      if (skelHP<=0) {
        spawnedS=false;       
        blocked = false;
        skelx= width+width/10;
        attackedS=false;
        skelHP=3;
      }
    }
  }
}
