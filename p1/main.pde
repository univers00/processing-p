star[] s = new star[500];

void setup(){
size(700,400);
for(int i = 0;i<s.length;i++){
   s[i] = new star(); 
  
}


}

void draw(){
  background(0);
  translate(width/2, height/2);
  stroke(200);
  fill(255);
  for(int i = 0 ; i< s.length;i++){
    s[i].show();
    s[i].update();
  }
  
}
