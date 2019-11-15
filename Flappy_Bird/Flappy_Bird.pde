int birdY = 200; 
int j = 0;
int k = 0;
int stage = 0;
int gravity = 3;
boolean clicked = false;
int stack = 0;
boolean stillUp = false;
int [] pipeUpper = new int[10];
int[] pipeX = new int[10];
void setup(){
background(0,0,250);
size(200,450);
for(int i = 0; i<10; i += 1){
pipeUpper[i] = (int)random(50,400);
pipeX[i] = i*200+(int)random(0,70);
}
}
void draw(){
  background(0,0,250);
  fill(255,255,100);
rect(100,birdY,20,10);
fill(250,250,250);
text("bird",100,birdY);
for(int h = 0; h < 10; h+=1){
fill(0,250,0);
print(pipeUpper[1],"\n");
rect(pipeX[h],0,30,400-pipeUpper[h]);
rect(pipeX[h],500-pipeUpper[h],30,900-pipeUpper[1]);
}
for (int d = 0; d<10;d+=1){
pipeX[d] -= 1;
}
//rect();
birdY += gravity;
if (mousePressed == true){
  if (stillUp == true){
  stack += 6;
  }
  else{
  stack = 0;
  }
stage = 1;
j = 20;
k = 20;
clicked = true;
//print("clicked");
mousePressed = false;
}
if (clicked == true){
if (stage == 1){
stillUp = true;
if (j==0){
stage = 2;
stillUp = false;
}
birdY -= 6 + stack;
j -= 1;
}
//if (stage == 2){
//if (k == 0){
//stage = 0;
//}
//birdY += 2;
//k -= 1;  
//print(k);
}

//}
mouseY += 1;
}
