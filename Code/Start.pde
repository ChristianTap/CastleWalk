boolean intro;
int timer;
int timer2;
int timer3;
void introCut() {  
  if (keyPressed) {
    if (key == ' ') {
      timer = 299;
    }
  }
  imageMode(CORNER);
  rectMode(CORNER);
  intro1.resize(width/2, height/2);
  intro2.resize(width/2, height/2);
  intro3.resize(width/2, height/2);
  intro4.resize(width/2, height/2);
  tint(255, 255, 255, 255);
  image(intro4, width/4, height/4);
  tint(255, 255, 255, 255-timer2);
  image(intro1, width/4, height/4);
  timer+=1;   
  if (timer<255) {
    fill(0, 255-timer*2);
    rect(0, 0, width, height);
  }
  if (timer>180&&timer<200) {
    tint(255, 255, 255, 255-timer2);
    image(intro3, width/4, height/4);
    timer3+=10;
    tint(255, 255, 255, 200-timer3);
    image(intro2, width/4, height/4);
  }
  if (timer==179) {
    fill(255);
    rect(0, 0, width, height);
  }
  if (timer>199&&timer<280) {
    timer2+=5;
    tint(255, 255, 255, 255-timer2);
    image(intro3, width/4, height/4);
  }
  if (timer>280&&timer<300) {
    timer2-=6;
    fill(0, 255-timer2);
    rect(0, 0, width, height);
  }
  if (timer>=300) {
    intro=false;
    charselect=true;
  }
}
