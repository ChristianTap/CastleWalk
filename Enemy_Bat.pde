boolean attackedEB, spawnedEB;
int batx, batHP = 1, battime, battime2;
Bat bat;

class Bat {

  Bat(int TempX) {
    batx = TempX;
  }

  void attack() {
    if (batx<=width/2.25&&spawnedEB) {
      battime++;
      blocked=true;
      if (battime>=150) {
        battime=0;
        if (defend==false) {
          lives--;
        }
      }
    }
  }


  void bat() {
    if (spawn==2&&spawner==true) {
      spawnedEB=true;
      spawner=false;
    }
    if (spawnedEB) {
      if (batx>width/2.25) {
        batx-=width/300;
      }
      if (battime<100) {
        battime2++;
        if (battime2>=20) {
          battime2=0;
        }
        if (battime2<10) {
          bats[0].resize(height/4,height/4);
          image(bats[0],batx, height/1.75);
        } else {
          bats[1].resize(height/4,height/4);
          image(bats[1],batx, height/1.75);
          
        }
        //rect(batx, height/1.75, height/10, height/10);
      } else{
        bats[2].resize(height/4,height/4);
        image(bats[2],batx, height/1.75);
      }
      if (attackedEB) {
        spawnedEB=false;       
        blocked = false;
        batx= width+width/10;
        attackedEB=false;
      }
      if (attack2&&batx<width/1.95) {
        attackedEB=true;
      }
    }
  }
}
