


class Walker{
  int x,y;
  
  Walker(){
    x = width/2;
    y = height/2;
  }

  void walk(){
    int choice = int(random(4));
    
    if(choice == 0){
      x++;
    }else if(choice == 1){
      x--;
    }else if(choice == 2){
      y++;
    }else{
      y--;
    }
    
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
    
  }
  
  void display(){
    ellipse(x,y,5,5);
  
  }
  
}


Walker w;

void setup(){
  size(800,600);
  w = new Walker();  
    
  background(255);
}

void draw(){
  
  w.walk();
  w.display();
  

}
