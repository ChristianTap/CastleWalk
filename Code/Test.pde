void TestSet() {
  TorchTest = new Torch(width/2, height/2);
}

int testtimer;

int r = 0;
void TestDraw() {

  rectMode(CORNERS);
  //fill(200,0,0,100);
  //rect(width/4, height/2, width/2.7, height/1.1);
  //rect(width/2.7,height/1.9,width/2,height/1.3);
  imageMode(CENTER);
  testtimer++;
  if (testtimer>40) {
    testtimer=0;
  }
  //if (testtimer<20) {
  //  wizards[2].resize(width/3, height/3);
  //  image(wizards[2], width/3, height/1.5);
  //} else {
  //  wizards[1].resize(width/3, height/3);
  //  image(wizards[1], width/3, height/1.5);
  //}
}

void TestControl() {
  player1.control();
}
