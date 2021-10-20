boolean attackedK, spawnedK, approach = true, back, vulnerable;
int badx, badHP = 4, badtime, badtime2, badtime3, badtime4;
Badguy bad;

class Badguy {

  Badguy (int Tempx) {
    badx=Tempx;
  }


  void baddie() {
    if (spawn==6&&spawner==true) {
      spawnedK=true;
      spawner=false;
    }
    if (spawnedK) {
      blocked = true;
      if (badx>width/1.5&&approach == true) {
        badx-=width/200;
      }
      if (back) {
        badx+=width/100;
      }
      if (badx>=width/1.6&&badx<= width/1.4) { 
        approach=false;
        back= false;
      }
      badtime2++;
      if (badtime2>=120) {
        badtime2=0;
      }
      if (badtime2<60) {
        fill(100, 100);
      } else {
        fill(100, 200);
      }
      if (vulnerable) {
        fill(200, 0, 0, 100);
      }
      rect(badx, height/1.7, height/3.2, height/2.35);
    }
  }
  void combat() {
    if (approach==false&&back==false&&vulnerable==false) {
      badtime++;
      if (badx>width/1.9&&badtime>150) {
        badx-=width/100;
      }
    }
    if (badtime>180) {
      badtime=0;
      if (defend) {
        vulnerable=true;
      } else {
        lives--;
        back=true;
      }
    }
    if (vulnerable) {
      badtime3++;
      if (attackedK) {
        badHP--;
        attackedK=false;
        vulnerable=false;
        badtime3=0;
        badtime=0;
        back=true;
      } else if (badtime3>200) {
        attackedK = false;
        vulnerable=false;
        badtime3=0;
        badtime=0;
        back=true;
      }
    }
    //
    if (attack2&&badx<width/1.9&&vulnerable) {
      attackedK=true;
    }
    if (badHP<=0) {
      spawnedK=false;       
      blocked = false;
      badx= width+width/10;
      attackedK=false;
      badHP=4;
    }
  }
}
