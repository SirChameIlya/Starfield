Particle[] lightning = new Particle[140];
int count = 0;
boolean start = false;

void setup() {
  size(600, 600);
  background(0);
  strokeWeight(2);
  for (int i = 0; i < lightning.length; i++) {
    lightning[i] = new Particle();
  }
}

void mousePressed() {
  start = true;
  for (int i = 0; i < 10; i++) {
    lightning[i] = new oddParticle();
  }
  for (int i = 10; i < lightning.length; i++) {
    lightning[i] = new Particle();
  }
}

void draw() {
  if (start == true) {
    for (int i = 0; i < lightning.length; i++) {
      lightning[i].move();
    }
    count++;
    if (count == 7) {
      count = 0;
      background(0);
    }
  }
}

class Particle {
  double myX, myFinalX, myY, myFinalY, mySpeed;
  int myColor, myDirection, myStrokeWeight;

  Particle() {
    myX = mouseX;
    myY = mouseY;
    myFinalX = mouseX;
    myFinalY = mouseY;
    mySpeed = Math.random() * 5 + 2;
    myColor = color((int)(Math.random()*257), (int)(Math.random()*257), (int)(Math.random()*257));
    myDirection = (int)(Math.random()*4);
    myStrokeWeight = 2;
  }

  void move() {
    stroke(myColor);
    strokeWeight(myStrokeWeight);
    if (myDirection == 0) { //left
      if (myFinalX > 0) {
        myFinalX = myX - mySpeed;
        myFinalY = myY - (Math.random() * 100 - 50);
        line((float)myX, (float)myY, (float)myFinalX, (float)myFinalY);
        myX = myFinalX;
        myY = myFinalY;
      }
    } else if (myDirection == 1) { //right
      if (myFinalX < 600) {
        myFinalX = myX + mySpeed;
        myFinalY = myY + (Math.random() * 100 - 50);
        line((float)myX, (float)myY, (float)myFinalX, (float)myFinalY);
        myX = myFinalX;
        myY = myFinalY;
      }
    } else if (myDirection == 2) { //up
      if (myFinalY > 0) {
        myFinalX = myX + (Math.random() * 100 - 50);
        myFinalY = myY - mySpeed;
        line((float)myX, (float)myY, (float)myFinalX, (float)myFinalY);
        myX = myFinalX;
        myY = myFinalY;
      }
    } else { //down
      if (myFinalY < 600) {
        myFinalX = myX + (Math.random() * 100 - 50);
        myFinalY = myY +  mySpeed ;
        line((float)myX, (float)myY, (float)myFinalX, (float)myFinalY);
        myX = myFinalX;
        myY = myFinalY;
      }
    }
  }//end of move function
}

class oddParticle extends Particle {
  oddParticle() {
    myX = mouseX;
    myY = mouseY;
    myFinalX = mouseX;
    myFinalY = mouseY;
    mySpeed = Math.random() * 5 + 2;
    myColor =  color((int)(Math.random()*257), (int)(Math.random()*257), (int)(Math.random()*257));
    myDirection = (int)(Math.random()*4);
    myStrokeWeight = 15;
  }

  void move() {
    stroke(myColor);
    strokeWeight(myStrokeWeight);
    if (myDirection == 0) { //left
      if (myFinalX > 0) {
        myFinalX = myX - mySpeed;
        myFinalY = myY - (Math.random() * 100 - 50);
        line((float)myX, (float)myY, (float)myFinalX, (float)myFinalY);
        myX = myFinalX;
        myY = myFinalY;
      } else {
        mySpeed  = mySpeed * -1;
        myFinalX = myX - mySpeed;
        myFinalY = myY - (Math.random() * 100 - 50);
        line((float)myX, (float)myY, (float)myFinalX, (float)myFinalY);
        myX = myFinalX;
        myY = myFinalY;
      }
    } else if (myDirection == 1) { //right
      if (myFinalX < 600) {
        myFinalX = myX + mySpeed;
        myFinalY = myY + (Math.random() * 100 - 50);
        line((float)myX, (float)myY, (float)myFinalX, (float)myFinalY);
        myX = myFinalX;
        myY = myFinalY;
      } else {
        mySpeed  = mySpeed * -1;
        myFinalX = myX + mySpeed;
        myFinalY = myY - (Math.random() * 100 - 50);
        line((float)myX, (float)myY, (float)myFinalX, (float)myFinalY);
        myX = myFinalX;
        myY = myFinalY;
      }
    } else if (myDirection == 2) { //up
      if (myFinalY > 0) {
        myFinalX = myX + (Math.random() * 100 - 50);
        myFinalY = myY - mySpeed;
        line((float)myX, (float)myY, (float)myFinalX, (float)myFinalY);
        myX = myFinalX;
        myY = myFinalY;
      } else {
        mySpeed  = mySpeed * -1;
        myFinalX = myX + (Math.random() * 100 - 50);
        myFinalY = myY - mySpeed;
        line((float)myX, (float)myY, (float)myFinalX, (float)myFinalY);
        myX = myFinalX;
        myY = myFinalY;
        ;
      }
    } else { //down
      if (myFinalY < 600) {
        myFinalX = myX + (Math.random() * 100 - 50);
        myFinalY = myY +  mySpeed ;
        line((float)myX, (float)myY, (float)myFinalX, (float)myFinalY);
        myX = myFinalX;
        myY = myFinalY;
      } else {
        mySpeed  = mySpeed * -1;
        myFinalX = myX + (Math.random() * 100 - 50);
        myFinalY = myY +  mySpeed ;
        line((float)myX, (float)myY, (float)myFinalX, (float)myFinalY);
        myX = myFinalX;
        myY = myFinalY;
      }
    }
  }//end of move function
}
