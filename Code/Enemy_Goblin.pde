boolean attackedG, spawnedG;
int gobx, gobHP = 2, gobtime, gobtime2;
Goblin gob;

class Goblin {

  Goblin(int TempX) {
    gobx = TempX;
  }

  void attack() {
    if (gobx<=width/2.25&&spawnedG) {
      gobtime++;
      blocked=true;
      if (gobtime>=100) {
        gobtime=0;
        if (defend==false) {
          lives--;
        }
      }
    }
  }


  void goblin() {
    if (spawn==3&&spawner==true) {
      spawnedG=true;
      spawner=false;
    }
    if (spawnedG) {
      if (gobx>width/2.25) {
        gobx-=width/300;
      }
      if (gobtime<80) {
        gobtime2++;
        if (gobtime2>=20) {
          gobtime2=0;
        }
        if (gobtime2<10) {
          goblins[0].resize(width/3, height/3);
          image(goblins[0], gobx, height/1.57);
        } else {
          goblins[1].resize(width/3, height/3);
          image(goblins[1], gobx, height/1.57);
        }
        //rect(gobx, height/1.427, height/5, height/5);
      } else {
        goblins[2].resize(width/3, height/3);
        image(goblins[2], gobx, height/1.57);
      }
      if (attackedG) {
        gobHP--;
        attackedG=false;
      }
      if (attack2&&gobx<width/1.95) {
        attackedG=true;
      }
      if (gobHP<=0) {
        spawnedG=false;       
        blocked = false;
        gobx= width+width/10;
        attackedG=false;
        gobHP=2;
      }
    }
  }
}
