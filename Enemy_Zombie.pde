boolean attackedZ, spawnedZ;
int zomx, zomHP = 4, zomtime, zomtime2;
Zombie zom;

class Zombie {

  Zombie(int TempX) {
    zomx = TempX;
  }

  void attack() {
    if (zomx<=width/2.25&&spawnedZ) {
      zomtime++;
      blocked=true;
      if (zomtime>=130) {
        zomtime=0;
        if (defend==false) {
          lives--;
        }
      }
    }
  }


  void zombo() {
    if (spawn==5&&spawner==true) {
      spawnedZ=true;
      spawner=false;
    }
    if (spawnedZ) {
      if (zomx>width/2.25) {
        zomx-=width/400;
      }
      if (zomtime<90) {
        zomtime2++;
        if (zomtime2>=20) {
          zomtime2=0;
        }
          if(zomHP==4){
            zombies[0].resize(width/2, height/2);
          image(zombies[0], zomx, height/1.8);
          }
          if(zomHP==3){
            zombies[1].resize(width/2, height/2);
          image(zombies[1], zomx, height/1.8);
          }
          if(zomHP<=2){
            zombies[2].resize(width/2, height/2);
          image(zombies[2], zomx, height/1.8);
          }
        } else{
          if(zomHP==4){
            zombies[3].resize(width/2, height/2);
          image(zombies[3], zomx, height/1.8);
          }
          if(zomHP==3){
            zombies[4].resize(width/2, height/2);
          image(zombies[4], zomx, height/1.8);
          }
          if(zomHP<=2){
            zombies[5].resize(width/2, height/2);
          image(zombies[5], zomx, height/1.8);
          }
      }
      if (attackedZ) {
        zomHP--;
        attackedZ=false;
      }
      if (attack2&&zomx<width/1.95) {
        attackedZ=true;
      }
      if(zomHP<=0){
        spawnedZ=false;       
        blocked = false;
        zomx= width+width/10;
        attackedZ=false;
        zomHP=4;
      }
    }
  }
}
