 
 
 class ParticleSystem{
   int x,y;
   ParticleSystem(){
     x = int(random(0,width));
     y = int(random(0,height/2));
     
   }
   
   void display(int x, int y){
     ellipse(x,y,20,20); 
   }
   
 
 }
 
 ParticleSystem ps;
 int a,b;
 void setup(){
   size(400,300);
   smooth();
   ps = new ParticleSystem();
   a = ps.x;
   b = ps.y;
   
 }
 
 
 void draw(){
   
  background(255);
  
  for(int i = 0; i < 10; i++){
    ps.display(a,b);
  b++;
  if(b > height){
  b = int(random(0,height/2));
  a = int(random(0,width));;
  }
  
  
  
  }
   
 }  
