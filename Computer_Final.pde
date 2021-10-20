//Final Computer Science
//Christian Tapia

boolean startup = true;

void setup() {
  loadground();
  fullScreen();
  text();
  noStroke();
  TestSet();
  loadimages();
  MenuSet();
  StageSet();
}

void draw() {
  background(0);
  textSize(200);
  fill(255);
  //text(int(spawnedB), width/3, height/2);
  //text(int(spawnedG), width/1.5, height/2);
  //
  textFont(game);
  //TestDraw();
  if (startup) {
    startscreen();
  }
  if (Main) {
    Menu();
  }
  if (options) {
    Settings();
  }
  if (intro) {
    introCut();
  }
  if (charselect) {
    selectcharacter();
  }
  if (stage1) {
    textAlign(CENTER);
    textSize(width/20);
    fill(200,0,0);
    text("A", width/10, height/6);
    fill(0,0,255);
    text("D", width/1.5, height/6);
    fill(255);
    text("ttack", width/10+width/10, height/6);
    text("efend", width/1.5+width/10, height/6);
    Stage1();
  }
  if (gameover) {
    println("GAMEOVER");
    stage1=false;
    textAlign(CENTER);
    textSize(width/5);
    fill(255);
    text("GAME OVER", width/2, height/3);
    noLoop();
  }
  
}

void keyPressed() {
  TestControl();
  if (Main) {
    mainselect();
  } else if (options) {
    SettingSelect();
  }
  if (charselect) {
    CharSelect();
  }
  if (stage1) {
    StageControl();
  }
  if (gameover) {   
    startup=true;
    gameover=false;
    stage1=false;
    wizard=false;
    spawner=false;
    lives=3;
    loop();
    badHP=0;
    batHP=0;
    zomHP=0;
    skelHP=0;
    gobHP=0;
    attack=false;
    defend=false;
    Progress=0;
    for (int i = 0; i<checkpoint.length; i++) {
    checkpoint[i] = true;
  }
  }
  
}

void keyReleased() {
  player1.release();
}
void mousePressed() {
  saveFrame("output/com_####.png");
  //saveFrame();
  //println(mouseX, width, mouseY, height);
}
