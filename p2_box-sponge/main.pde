box b;
ArrayList<box> ab;
float x= 0.01;
float y = 0.01;


void setup(){
 size(600,600,P3D);
 b = new box(0,0,0,200);
 ab = new ArrayList<box>();
 ab.add(b);
 
}
ArrayList<box> arraysponge;
void mousePressed(){
  
  arraysponge = new ArrayList<box>();
  for(box i : ab){
       arraysponge.addAll(i.generate());
  }
       ab = arraysponge;
       
}

void draw(){
  background(0);
  lights();
  translate(width/2,height/2);
  rotateX(x +0.001);
  rotateY(y + 0.001);
  x = x + 0.001;
  y = x + 0.001;
      for(box b : ab){
      b.show();
      } 

}
