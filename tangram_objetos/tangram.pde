class  tangram {
  
boolean h= false;
void visual(){
  if (!h){
 background (255,255,153);
 }
 if(h){
 float j = random(255);
 float p = random(255);
 float  k= random(255);
 
  background(j,p,k);
 
 }
 }
 void mesa () {
 int r = width /2 - height /2;
 noStroke();
 fill(255);
 rect(r,0,height,height);
 }
void problemt(int a,int b, int c, int d,int e, int f) {
pushMatrix();
  translate(width/2, height/2);
fill(255,255,153);
stroke(0);
triangle(a,b,c,d,e,f);
popMatrix();
}
void problemq(int a,int b, int c, int d,int e, int f,int g, int h) {
pushMatrix();
  translate(width/2, height/2);
fill(255,255,153);
stroke(0);
quad(a,b,c,d,e,f,g,h);
popMatrix();

}

void win () {
  color p;
  int u = 0;
  
for(int t = 450; t < 900; t++){ 
for(int j = 150; j < 650; j++){
  p = get (t,j);
  if ( p == color(255,255,153)){
  u = u +1;
  }}
if ( u < 500) {
h = true;
}else {h= false;}


}
}


void mensaje(){

 if(h){
 fill(0);
textSize(120);
textAlign(CENTER, CENTER);
  text("¡Has ganado!",width/2,height/2);}



}}