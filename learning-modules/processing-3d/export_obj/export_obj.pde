// this will export any 3d scene to an OBJ file
// you can conver to STL with something like
// https://www.makexyz.com/convert/obj-to-stl

import nervoussystem.obj.*;

boolean save = false;
float noiseScale = .05;

void setup() {
  size(400,400,P3D);
}

void draw() {
  background(255);
  
  // save mesh if 's' key pressed (see below)
  if(save) {
    OBJExport obj = (OBJExport) createGraphics(10,10,"nervoussystem.obj.OBJExport","mesh.obj");
    obj.beginDraw();
    drawNoise(obj);
    obj.endDraw();
    obj.dispose();
    save = false;
  }
  
  // show generated mesh, with slow rotation
  noStroke();
  translate(width/2,height/2,-50);
  rotateX(PI/6.0);
  rotateZ(frameCount*PI/360.0);
  translate(-100,-100,0);
  scale(4);
  drawNoise(this.g);
}

// this is a function from https://n-e-r-v-o-u-s.com/tools/obj/
// it creates a 3d noise map (looks like generated terrain)
void drawNoise(PGraphics pg) {
  pg.beginShape(TRIANGLES);
  for(int i=0;i<50;i++) {
    for(int j=0;j<50;j++) {
      float z = noise(i*noiseScale,j*noiseScale);
      pg.fill( lerpColor( color(255,0,0),color(0,0,255),z ));
      pg.vertex(i,j,z*50);
      z = noise((i+1)*noiseScale,j*noiseScale);
      pg.fill( lerpColor( color(255,0,0),color(0,0,255),z ));
      pg.vertex(i+1,j,z*50);
      z = noise((i+1)*noiseScale,(j+1)*noiseScale);
      pg.fill( lerpColor( color(255,0,0),color(0,0,255),z ));
      pg.vertex(i+1,j+1,z*50);

      z = noise((i+1)*noiseScale,(j+1)*noiseScale);
      pg.fill( lerpColor( color(255,0,0),color(0,0,255),z ));
      pg.vertex(i+1,j+1,z*50);
      z = noise(i*noiseScale,(j+1)*noiseScale);
      pg.fill( lerpColor( color(255,0,0),color(0,0,255),z ));
      pg.vertex(i,j+1,z*50);
      z = noise(i*noiseScale,j*noiseScale);
      pg.fill( lerpColor( color(255,0,0),color(0,0,255),z ));
      pg.vertex(i,j,z*50);
    }
  }
  pg.endShape();  
}

// when user hits 's' key, save mesh as OBJ
void keyPressed()
{
  if (key == 's') {
    save = true;
  }
}
