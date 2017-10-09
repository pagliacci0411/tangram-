 class pieza{

  float x,x1;
  color w;
color q;
float j = 0.0;

float n,m;
float p = -0.7;
float i = 0.7;

pieza (float a,float a1, color d) {
x = a; 
x1 = a1; 
w = d;
q = d ;

}
void displayt (int a, int b,int c,int d,int e,int f,int g,int h) {
  stroke (w);
  fill (w);
  n = x + g;
  m =x1 + h;
  pushMatrix();
translate(n,m);
rotate(radians(j));
triangle (a,b,c,d,e,f);
  popMatrix();
    }
void displayq(int a, int b,int c,int d,int e,int f,int i,int k, int g,int h) {
  stroke (w);
  fill (w);
  n = x + g;
  m =x1 + h;
  pushMatrix();
translate(n,m);
rotate(radians(j));
quad (a,b,c,d,e,f,i,k);
  popMatrix();
    }
    
    void move (int p,int k){
x=p;
x1=k;
 }

 

boolean agarrar(){
if(mousePressed && (mouseButton == CENTER)){
  if (k == w ){
    return true;}else { return false;}}else{ return false;}
 
}
void change (pieza a, pieza b,pieza c, pieza d, pieza e,pieza f){
 a.w= color (w,150);
 b.w= color (w,150);
 c.w= color (w,150);
 d.w= color (w,150);
 e.w= color (w,150);
 f.w= color (w,150);}

void retrn(pieza a, pieza b,pieza c, pieza d, pieza e, pieza f, pieza g) {
a.w= color (a.q);
 b.w= color (b.q);
 c.w= color (c.q);
 d.w= color (d.q);
 e.w= color (e.q);
 f.w= color (f.q);
 g.w= color (g.q);
}
void gira (){
  
  if(mousePressed && (mouseButton == LEFT)){
  if (k == w ){
    i = i +0.04; 
    j= j +i;
    }}else{
    i=0.7;
    }
  }
void girai (){
  
  if(mousePressed && (mouseButton == RIGHT)){
  if (k == w ){
    p=p- 0.04;
     j= j + p;
    }}else{p = -0.7;
  }}}

 