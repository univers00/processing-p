class box{
  PVector po = new PVector();
  float s;
 box(float x,float y,float z ,float size){
   po.x = x;
   po.y = y;
   po.z = z;
   s= size;
 }
 ArrayList<box> boxarray;

 ArrayList<box> generate(){
   boxarray = new ArrayList<box>();
    for(int x = -1;x<2;x++){
       for(int y = -1;y<2;y++){
          for(int z = -1;z<2;z++){
            float sum = abs(x) + abs(y) + abs(z);
            float news = s /3;
                        if(sum > 1){
                            box b = new box(po.x + x*news, po.y + y*news, po.z + z*news ,news);
                            boxarray.add(b);
                        }
        }
      } 
    }
    return  boxarray;
 }
 void show(){
          pushMatrix();
                fill(255);
                stroke(100);
                translate(po.x,po.y,po.z);
                box(s);
          popMatrix();
 }
 
  
}
