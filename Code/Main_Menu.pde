
boolean Main = false;
boolean options = false;

int Size = 21;
int sub;

//Title Screen
void startscreen() {
  fill(255);
  sub += 1;
  background(0);
  textAlign(CENTER, CENTER);
  textSize(width/7);
  text("Castle Walk", width/2, height/3);  
  if (sub<60) {
    textSize(width/20);
    text("Press any button", width/2, height/1.3);
  }
  if (sub>=120) {
    sub=0;
  }
  if (keyPressed) {
    startup = false;
    Main = true;
    sub = 0;
  }
}


boolean up;
boolean down;
//Main Menu

void mainselect() {

  up = false;
  down = false;
  if (keyCode == UP) {
    up = true;
  }
  if (keyCode == DOWN) {
    down = true;
  }
  if (up) {
    Select-=1;
  }
  if (down) {
    Select+=1;
  }
  if (key == 's') {
    if (Select == 1) {
      Main = false;
      intro=true;
    }
    if (Select == 2) {
      Main = false;
      options = true;
    }
    if (Select == 3) {
      exit();
    }
  }
}
void MenuSet(){
  TorchSelect = new Torch(-width, 0); 
}
void Menu() { 
  TorchSelect.displaySelectMain();
  fill(100);
  textSize(width/8);
  if (Select==1) {
    fill(255);
  } else {
    fill(100);
  }
  text("Play", width/5, height/ 5); // = 1
  if (Select==2) {
    fill(255);
  } else {
    fill(100);
  }
  text("Options", width/1.4, height/2.5); // = 2
  textSize(width/20);
  if (Select==3) {
    fill(255);
  } else {
    fill(100);
  }
  text("Exit", width/2, height /1.2); // = 3
  if (Select>3) {
    Select = 1;
  }
  if (Select<1) {
    Select = 3;
  }
}
void SettingSelect() {
  up = false;
  down = false;
  if (key == 's' && Select == 2) {
    options = false;
    Main = true;
  }
  if (keyCode == UP) {
    up = true;
  }
  if (keyCode == DOWN) {
    down = true;
  }
  if (keyCode == RIGHT && Select == 1) {
    Size += 1;
  }
  if (keyCode == LEFT && Select == 1) {
    Size -= 1;
  }
  if (up) {
    Select-=1;
  }
  if (down) {
    Select+=1;
  }
}
void Settings() {
  if (Select>2) {
    Select = 1;
  }
  if (Select<1) {
    Select = 2;
  }
  textSize(width/10);
  if (Select==1) {
    fill(255);
  } else {
    fill(100);
  }
  text("Screen Size", width/2, height/4);
  if (Size== 1) {
    text("1", width/2, height/2.5);
    surface.setSize(160, 90);
  }
  if (Size == 2) {
    text("2", width/2, height/2.5);
    surface.setSize(16*20, 9*20);
  }
  if (Size == 3) {
    text("3", width/2, height/2.5);
    surface.setSize(16*30, 9*30);
    textSize(width/15);
  }
  if (Size == 4) {
    text("4", width/2, height/2.5);
    surface.setSize(16*40, 9*40);
  }
  if (Size == 5) {
    text("5", width/2, height/2.5);
    surface.setSize(16*50, 9*50);
  }
  if (Size == 6) {
    text("6", width/2, height/2.5);
    surface.setSize(16*60, 9*60);
  }
  if (Size == 7) {
    text("7", width/2, height/2.5);
    surface.setSize(16*70, 9*70);
  }
  if (Size == 8) {
    text("8", width/2, height/2.5);
    surface.setSize(16*80, 9*80);
  }
  if (Size == 9) {
    text("9", width/2, height/2.5);
    surface.setSize(16*90, 9*90);
  }
  if (Size == 10) {
    text("10", width/2, height/2.5);
    surface.setSize(16*100, 9*100);
  }
  if (Size== 11) {
    text("11", width/2, height/2.5);
    surface.setSize(16*110, 9*110);
  }
  if (Size == 12) {
    text("12", width/2, height/2.5);
    surface.setSize(16*120, 9*120);
  }
  if (Size == 13) {
    text("13", width/2, height/2.5);
    surface.setSize(16*130, 9*130);
    textSize(width/15);
  }
  if (Size == 14) {
    text("14", width/2, height/2.5);
    surface.setSize(16*140, 9*140);
  }
  if (Size == 15) {
    text("15", width/2, height/2.5);
    surface.setSize(16*150, 9*150);
  }
  if (Size == 16) {
    text("16", width/2, height/2.5);
    surface.setSize(16*160, 9*160);
  }
  if (Size == 17) {
    text("17", width/2, height/2.5);
    surface.setSize(16*170, 9*170);
  }
  if (Size == 18) {
    text("18", width/2, height/2.5);
    surface.setSize(16*180, 9*180);
  }
  if (Size ==19) {
    text("19", width/2, height/2.5);
    surface.setSize(16*190, 9*190);
  }
  if (Size == 20) {
    text("20", width/2, height/2.5);
    surface.setSize(16*200, 9*200);
  }
  if (Size == 21) {
    text("Fill", width/2, height/2.5);
    surface.setSize(displayWidth, displayHeight);
  }
  if (Select == 2) {
    fill(255);
  } else {
    fill(100);
  }
  textSize(width/15);
  text("Back", width/2, height/1.5);
  if (Size>21) {
    Size = 1;
  }
  if (Size<1) {
    Size = 21;
  }
}
