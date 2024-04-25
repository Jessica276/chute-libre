float y = 0.0;
float radius = 35.0;
int deplacementY = 1;
int deplacementX_rect;
int posX_rect = 350;
float speed = 7;
PImage png;
float width = 1000;
float height = 800;

void setup(){
  size(1000, 800);
  frameRate(30);
  png = loadImage("balle.png");
}

void draw(){
  background(120);
  image(png, width/2, y, radius*2, radius*2);
  rect(posX_rect, height-50, 300, 50);
  y = y + speed * deplacementY;
  if(y + radius >= height - 50){
    y = height - radius * 2 - 50;                  // Fixe la balle sur la ligne d'atterrissage
    speed = -speed;
  }
  else if(y - radius <= 0){
    y = radius;                 
    speed = -speed;         
  }
}


// Déplacer le rectangle
void keyPressed(){
  if(key == CODED){
    if(keyCode == LEFT && posX_rect > 0) {
      posX_rect -= 4;
    }
    else if(keyCode == RIGHT && posX_rect < width - 300) {
      posX_rect += 4;
    }
  }
}
