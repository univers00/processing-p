class star{
  
  float x,y,z,pz; //prev->z
  
  
  star(){
    x=random(-width/2,width/2);
    y=random(-height/2,height/2);
    z=random(width/2);
    pz=z;
    
    
  }
  void update(){
       z=z-map(mouseX,0,width/2,0,70); 
       
   if(z<1){
    x=random(-width/2,width/2);
    y=random(-height/2,height/2);
    z=random(width/2);
    pz=z;
   }
   
  }

  void show(){
   float sx = map(x/z,0,1,0,width/2);
   float sy = map(y/z,0,1,0,height/2);

   float r = map(z,0,width/2,4,0);
   
   ellipse(sx,sy,r,r);
   
   float lx = map(x/pz,0,1,0,width/2);
   float ly =map(y/pz,0,1,0,height/2);
   line(sx,sy,lx,ly);
   pz=z;
    
  }


}
