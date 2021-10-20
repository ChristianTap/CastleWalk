//Intro frames
PImage intro1;
PImage intro2;
PImage intro3;
PImage intro4;
//
PImage knightIcon;
PImage wizardIcon;
PImage rougeIcon;
PImage knightSelect;
PImage wizardSelect;
PImage rougeSelect;
PImage swordselect;
PImage spearselect;
PImage staffselect;
PImage flame1,flame2;
PImage[] barriers = new PImage[2];
PImage[] wizards = new PImage[10];
PImage[] knights = new PImage[10];
PImage[] rouges = new PImage[10];
PImage[] bats = new PImage[3];
PImage[] goblins = new PImage[3];
PImage[] skeletons = new PImage[3];
PImage[] zombies = new PImage[6];
PImage[] badknight = new PImage[7];
PImage[] dragons = new PImage[6];

void loadimages() {
  intro1 = loadImage("Frame1.png");
  intro2 = loadImage("Frame2.png");
  intro3 = loadImage("Frame3.png");
  intro4 = loadImage("Frame4.png");

  knightIcon = loadImage("Red.png");
  wizardIcon = loadImage("Blue.png");
  rougeIcon = loadImage("Green.png");
  knightSelect = loadImage("RedS.png");
  wizardSelect = loadImage("BlueS.png");
  rougeSelect = loadImage("GreenS.png");

  swordselect = loadImage("swordselect2.png");

  staffselect = loadImage("staffselect.png");

  spearselect = loadImage("spearselect.png");

  ground1 = loadImage("ground1.png");
  ground2 = loadImage("ground2.png");
  
  flame1 = loadImage("Flame1.png");
  flame2 = loadImage("Flame2.png");
  
  bats[0] = loadImage("Bats1.png");
  bats[1] = loadImage("Bats2.png");
  bats[2] = loadImage("BatsA.png");
  
  goblins[0] = loadImage("Goblins1.png");
  goblins[1] = loadImage("Goblins2.png");
  goblins[2] = loadImage("GoblinsA.png");
  
  skeletons[0] = loadImage("Skull1.png");
  skeletons[1] = loadImage("Skull2.png");
  skeletons[2] = loadImage("SkullA.png");
  
  zombies[0] = loadImage("Zom1.png");
  zombies[1]= loadImage("Zom2.png");
  zombies[2] = loadImage("Zom3.png");
  zombies[3] = loadImage("ZomA1.png");
  zombies[4] = loadImage("ZomA2.png");
  zombies[5] = loadImage("ZomA3.png");
  
  barriers[0] = loadImage("Barrier1.png");
  barriers[1] = loadImage("Barrier2.png");

  
  
  wizards[1]= loadImage("WNeutral.png");
  wizards[2]=loadImage("WWalk.png");
  wizards[3]=loadImage("WAttack1.png");
  wizards[4]=loadImage("WAttack2.png");
  wizards[5]=loadImage("WDefend.png");
}
