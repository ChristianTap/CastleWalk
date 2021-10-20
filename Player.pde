boolean charselect;
boolean play, gameover;
boolean knight;
boolean wizard=true;
boolean rouge;
int Select = 1;
thePlayer player1;
boolean attack, attack2, defend, move, neutral=true, wait;
int damage = 1;
int lives = 3;
int[] PlayerTimer = new int[5];

class thePlayer {
  float xpos;
  float ypos;

  thePlayer(float Tempx, float Tempy) {
    xpos=Tempx;
    ypos=Tempy;
  }
  void HitBox() {
    rectMode(CORNERS);
    if (attack) {
      fill(200, 0, 0, 100);
    } else {
      fill(0, 0, 200, 100);
    }
    rect(width/4, height/2, width/2.7, height/1.1);
    if (attack) {
      rect(width/2.7, height/1.9, width/2, height/1.3);
    }
  }


  void display() {
    if (lives>=1) {      
      if(knight){
      fill(200, 0, 0, 100);
      }
      if(wizard){
        fill(0,0,200,100);
      }
      if(rouge){
        fill(0,200,0);
      }
      rect(width/2-height/5, height/10, height/10, height/10);
      if (lives>=2) {
        rect(width/2, height/10, height/10, height/10);
        if (lives==3) {
          rect(width/2+height/5, height/10, height/10, height/10);
        }
      }
    } else{
      gameover=true;
    }
    if (wait) {
      PlayerTimer[4]++;
    }
    if (PlayerTimer[4]>=30) {
      wait=false;
      PlayerTimer[4]=0;
    }
    imageMode(CENTER);
    if (PlayerTimer[1]>40) {
      PlayerTimer[1]=0;
    }
    if (knight) {
      if (attack==false&&defend==false) {
        if (PlayerTimer[1]<20) {
          knights[2].resize(width/3, height/3);
          image(knights[2], width/3, height/1.5);
        } else {
          knights[1].resize(width/3, height/3);
          image(knights[2], width/3, height/1.5);
        }
      }


      if (attack) { 
        println(PlayerTimer[2]);
        PlayerTimer[2]++;
        if (PlayerTimer[2]>50) {
          PlayerTimer[2]=0;
          attack=false;
          println("attack", attack);
        }
        if (PlayerTimer[2]<25) {
          //2nd Attack frame
        } else {
          //1st Attack frame
        }
      }
    }

    //Wizard
    if (wizard) {
      if (attack==false&&defend==false) {
        if (PlayerTimer[1]<20) {
          wizards[2].resize(width/3, height/3);
          image(wizards[2], width/3, height/1.5);
        } else {
          wizards[1].resize(width/3, height/3);
          image(wizards[1], width/3, height/1.5);
        }
      }
      if (attack&&defend==false&&PlayerTimer[4]<30) {
        PlayerTimer[2]++;
        if (PlayerTimer[2]>=30) {
          PlayerTimer[2]=0;
          attack=false;
          wait=true;
          attack2= false;
        }
        if (PlayerTimer[2]<20) {
          wizards[3].resize(width/3, height/3);
          image(wizards[3], width/3, height/1.5);
        } else {
          if (PlayerTimer[2]==29) {
            attack2=true;
          }
          wizards[4].resize(int(width/2.15), height/3);
          image(wizards[4], width/2.5, height/1.5);
        }
      }
      if (defend&&attack==false&&PlayerTimer[4]<30) {
        wizards[5].resize(int(width/2.5), height/3);
        image(wizards[5], width/3, height/1.5);
      }
    }


    //Rouge
    if (rouge) {
      if (attack==false&&defend==false) {
        if (PlayerTimer[1]<20) {
          rouges[2].resize(width/3, height/3);
          image(rouges[2], width/3, height/1.5);
        } else {
          rouges[1].resize(width/3, height/3);
          image(rouges[1], width/3, height/1.5);
        }
      }

      if (attack&&defend==false&&PlayerTimer[4]<30) {
        PlayerTimer[2]++;
        if (PlayerTimer[2]>=50) {
          PlayerTimer[2]=0;
          attack=false;
          wait=true;
          attack2= false;
        }
        if (PlayerTimer[2]<40) {
          //2nd Attack frame
        } else {
          if (PlayerTimer[2]==49) {
            attack2=true;
          }
          //1st Attack frame
        }

        if (defend&&attack==false&&PlayerTimer[4]<30) {
          //rouges[3].resize(width/3, height/3);
          //image(rouges[3], width/3, height/1.5);
        }
      }
    }
  }
  void control() {
    if (key=='a'&&defend==false) {
      attack=true;
    }
    if (key=='d'&&attack==false) {
      defend=true;
    }
    if (attack==false&&defend==false&&keyCode==RIGHT||keyCode==LEFT) {
      PlayerTimer[1]++;
    }
  }
  void release() {
    if (key=='d') {
      defend=false;
      if (wait==false) {
        wait=true;
      }
    }
  }
}







void CharSelect() {
  if (keyCode == RIGHT) {
    Select+=1;
  }
  if (keyCode == LEFT) {
    Select-=1;
  }
  if (key == 's') {
    startup=false;
    if (Select == 1) {
      //charselect=false;
      //knight=true;
      //stage1=true;
    }
    if (Select == 2) {
      charselect=false;
      wizard= true;
      stage1=true;
    }
    if (Select == 3) {
      //charselect=false;
      //rouge = true;
      //stage1=true;
    }
  }
}
void selectcharacter() {
  charselect=true;
  tint(255, 255, 255, 255);
  imageMode(CENTER);
  knightIcon.resize(width/13, width/13);
  wizardIcon.resize(width/13, width/13);
  rougeIcon.resize(width/13, width/13);
  knightSelect.resize(width/13, width/13);
  wizardSelect.resize(width/13, width/13);
  rougeSelect.resize(width/13, width/13);
  swordselect.resize(width/4, width/4);
  staffselect.resize(width/4, width/4);
  spearselect.resize(width/4, width/4);
  image(knightIcon, width/3, height/2);
  image(wizardIcon, width/2, height/2);
  image(rougeIcon, width/1.5, height/2);
  if (Select<1) {
    Select=3;
  }
  if (Select>3) {
    Select=1;
  }
  if (Select==1) {
    image(knightSelect, width/3, height/2);
    pushMatrix();
    translate(width/2, height/5);
    rotate(radians(-135));    
    image(swordselect, 0, 0);
    popMatrix();
  }
  if (Select==2) {
    image(wizardSelect, width/2, height/2);
    image(staffselect, width/2, height/5);
  }
  if (Select==3) {
    image(rougeSelect, width/1.5, height/2);
    image(spearselect, width/2, height/5);
  }
}
