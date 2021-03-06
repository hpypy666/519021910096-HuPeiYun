class Obstacle {

  PVector position;
  float w,h;
  
  Obstacle(float x, float y, float w_, float h_) {
    position = new PVector(x,y);
    w = w_;
    h = h_;
  }
  
  void display(){
    stroke(0);
    fill(#01030A);
    strokeWeight(2);
    rect(position.x,position.y,w,h);
    
  }
  
  boolean contains(PVector spot){
    if (spot.x > position.x && spot.x < position.x + w && spot.y > position.y && spot.y < position.y + h) {
      return true;
    } else {
      return false;
    }
  }
  
}
  
