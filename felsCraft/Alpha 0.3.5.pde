int[] coords = {100,100};
final String version = "Alpha 0.3.5 - test";

void setup(){
  size(640,320);//640|320
  smooth(3);
  surface.setTitle("felsCraft game "+version);
  surface.setResizable(false);
  background(#7fc9fa);
  strokeWeight(3);
  frameRate(60);
  int y = 300;
  int x = 1;
  int cw = 1,test = 0;
  int[] weidth = new int[33];
  setColor(255,0,0);
  show(100,100);
  while(test < 33){
     weidth[test] =(int) random(2,10);
     ++test;
  }
  test = 0;
  for(int i = 0;i != 33;i++){
    for(test = 0;test < weidth[i];test++){
        if(cw >= 1){
           setColor(13,11,13); 
        }
        if(cw >= random(4,6)){
         setColor(0,153,0); 
        }
        if(cw >= random(7,8)){
         setColor(256,256,256); 
        }
        show(x,y);
        y-=20;
        ++cw;
    }
    cw=1;
    y=300;
    x+=20;
  }
  text("felsCraft "+version,510,300);
}

void draw(){
  stroke(256,256,256);
  fill(256,256,256);
  text("felsCraft "+version,510,300);
  //Input channels in game
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      stroke(#7fc9fa);
      fill(#7fc9fa);
      show(coords[0],coords[1]);
      setColor(255,0,0);
      show(coords[0],coords[1]-20);
      coords[1] -=20;
      delay(90);
    }
    if(key == 'd' || key == 'D'){
      stroke(#7fc9fa);
      fill(#7fc9fa);
      show(coords[0],coords[1]);
      setColor(255,0,0);
      show(coords[0]+20,coords[1]);
      coords[0] +=20;
      delay(90);
    }
    if(key == 'a' || key == 'A'){
      stroke(#7fc9fa);
      fill(#7fc9fa);
      show(coords[0],coords[1]);
      setColor(255,0,0);
      show(coords[0]-20,coords[1]);
      coords[0] -=20;
      delay(90);
    }
    if(key == 's' || key == 'S'){
      stroke(#7fc9fa);
      fill(#7fc9fa);
      show(coords[0],coords[1]);
      setColor(255,0,0);
      show(coords[0],coords[1]+20);
      coords[1] +=20;
      delay(90);
    }
  } else {
    ;
  }
}
//The seconds metods
void show(int startX,int startY){
  rect(startX,startY,20,20);
 /* line(startX,startY,startX+20,startY);
  line(startX+20,startY,startX+20,startY+20);
  line(startX+20,startY+20,startX,startY+20);
  line(startX,startY+20,startX,startY);*/
}

void setColor(int a,int b,int c) {
 stroke(a,b,c);
 fill(#7fc9fa);
}
