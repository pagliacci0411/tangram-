tangram tangram1;
pieza t1 ;
pieza t2 ;
pieza t3 ;
pieza t4 ;
pieza t5 ;
pieza c6 ;
pieza c7 ;
color k;
boolean r = false ;
int x=0;
boolean g;
void setup (){
    
  fullScreen () ;
 
 tangram1 = new tangram();
  t1 = new pieza (random(0,300),150,color(250,20,10));
  t2 = new pieza (random(700,100),10, color(250,20,255));
  t3 = new pieza (random(0,300),250,color(102,0,204));
  t4 = new pieza (random(700,1000),300 ,color(50,100,150));
  t5 = new pieza (random(0,300),400 ,color(150,20,10));
  c6 = new pieza (random(700,1000),500 ,color(255,128,0));
  c7 = new pieza (random(0,300),600 ,color(23,155,83));
    
}
void draw (){
 
  if (x != 0){
    
    
    
 
    
 
    
 
tangram1.visual();
 tangram1.mesa();
 
 switch(x){
   case 1:
 tangram1.problemq(-150,-150,150,-150,150,150,-150,150);
  break;
  case 2:
 tangram1.problemt(-212,0,0,-212,0,212);
 tangram1.problemt(0,60,106,-45,0,-150);
 tangram1.problemq(0,60,0,166,106,60,106,-45);
 tangram1.problemt(0,-150,75,-225,75,-75);
 tangram1.problemt(0,166,75,241,75,91);
 tangram1.problemq(106,0,181,-75,316-60,0,181,75);
  break;
case 3:
tangram1.problemq(-150,-150,150,-150,150,150,-150,150);
fill(0);
textSize(25);
 text("Para mover una pieza presione la rueda del raton",width/2,200);
  text("Para girar la pieza a la derecha, click izquierdo",width/2,300);
   text("Para girar la pieza a la izquierda, click derecho",width/2,400);
   text("Para voltear el romboide precione la tecla c ",width/2,500);
  break;
}
  
   frameRate(800);

t1.displayt(-150,-75,0,75,150,-75,150,75);
t2.displayt (-75,0,75,-150,75,150,75,0);
 t3.displayt (37,0,-37,-75,-37,75,75,0);
 t4.displayt (-38,-112,-38,38,112,38,38,112);
t5.displayt (-75,38,0,-38,75,38,75,38);
c6.displayq (-75,0,0,-75,75,0,0,75,75,0);

if (g){
c7.displayq(-125,-38,25,-38,100,38,-50,38,125,38);}else{
c7.displayq(25,-38,175,-38,100,38,-50,38,-25,38);
}

  k=  get (mouseX , mouseY);

if(t1.agarrar()){
        t1.move(mouseX-150 ,mouseY- 75);
        t1.change(t2,t3,t4,t5,c6,c7);
      }
    if(t2.agarrar()){
        t2.move(mouseX-75 ,mouseY);
        t2.change(t1,t3,t4,t5,c6,c7);
    }
    if(t3.agarrar()){
        t3.move(mouseX-75 ,mouseY);
        t3.change(t1,t2,t4,t5,c6,c7);
    }
    if(t4.agarrar()){
        t4.move(mouseX -38 ,mouseY -112);
        t4.change(t1,t2,t3,t5,c6,c7);
    }
    if(t5.agarrar()){
        t5.move(mouseX -75 ,mouseY -38);
        t5.change(t1,t3,t2,t4,c6,c7);
    }
     if(c6.agarrar()){
        c6.move(mouseX -75 ,mouseY );
        c6.change(t1,t3,t2,t4,t5,c7);
    }
     if(c7.agarrar()){
       if (g){
        c7.move(mouseX -125 ,mouseY -38);}
        if(!g){ c7.move(mouseX +25 ,mouseY -38);}
        c7.change(t1,t3,t2,t4,t5,c6);
    }
    if(!t1.agarrar()&& !t2.agarrar()&&!t3.agarrar()&&!t4.agarrar()&&!t5.agarrar()&&!c6.agarrar()&&!c7.agarrar()){
    
    t1.retrn(t1,t2,t3,t4,t5,c6,c7);
    
    
    }
 t1.girai();
 t2.girai();
 t3.girai();
 t4.girai();
 t5.girai();
 c6.girai();
 c7.girai();

 t1.gira();
 t2.gira();
 t3.gira();
 t4.gira();
 t5.gira();
 c6.gira();
 c7.gira();
  tangram1.win();
  tangram1.mensaje();
}else {  background(204,255,153);
   fill(0);
   textSize(75);
   textAlign(CENTER, CENTER);
   text("¡Bienvenido al tangram!",width/2,200); 
 text("Elija el nivel que desea resolver",width/2,height/2);
 textSize(35);
 text("para ello presiona la tecla 1 o 2, según el nivel de dificultad",width/2,600);
  textSize(25);
 text("para ir al menú de instrucciones presione 3",width/2,700);}

 if (keyPressed) {
    if (key == '1') {
      x = 1;}
      
     if (key == '2') {
      x =2;}
       if (key == '3') {
      x =3;}
       
    }}

void keyReleased() {
   if (key == 'c'){
   if(g){
        g=false;}
else{
   g= true;}
   }}
   
    

  