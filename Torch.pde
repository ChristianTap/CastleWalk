Torch TorchTest;
Torch TorchSelect;


class Torch {
  float xpos;
  float ypos;
  int flame = int(random(60));
  int fire;


  Torch (float tempX, float tempY) {
    xpos = tempX;
    ypos = tempY;
  }
  void display() {
    if(xpos<-width/8){
      xpos=width+width/8;
    }
    if(xpos>width+width/8){
      xpos=-width/8;
    }
    flame++;
    if (flame>60) {
      flame=0;
    }
    imageMode(CENTER);
    if (flame>30) {
      image(flame1, xpos, ypos);
    } else {
      image(flame2, xpos, ypos);
    }
    flame1.resize(width/20, height/10);
    flame2.resize(width/20, height/10);
    imageMode(CORNER);
  }
  
  void move() {
  }

  void displaySelectMain() {
    if (Select == 1) {
      xpos = width/5.5;
      ypos = height/11;
    }
    if (Select ==2) {
      xpos = width/1.5;
      ypos = height/3.5;
    }
    if (Select == 3) {
      xpos=-width;
    }
    flame++;
    if (flame>60) {
      flame=0;
    }
    if (flame>30) {
      image(flame1, xpos, ypos);
    } else {
      image(flame2, xpos, ypos);
    }
    flame1.resize(width/20, height/10);
    flame2.resize(width/20, height/10);
  }
  void torchmove() {
    if (keyCode==RIGHT) {
      xpos-=width/200;
    }
    if (keyCode==LEFT) {
      xpos+=width/200;
    }
  }
}
