int sum = 0;
void setup() {
    noLoop();
    size(800, 800);
    
}

void draw() {
  


    int gridSize = 9;
    int d=5;
    int dieSize = 100;
background(255);
    for (int i = -4; i < gridSize; i++) {
        for (int j = -4; j < d; j++) {
            Die die = new Die(200 + i * dieSize, 200 + j * dieSize, dieSize);
            die.roll();
            die.show();
         
        }
        
fill(0);
textSize(30);
text("The grand total is "+ sum, 250, 750);
  }
}

void mousePressed() {
  sum = 0;
    redraw();

}


class Die {
    int mySize, myX, myY;
    int dieValue;

    Die(int x, int y, int size) { 
        myX = x;
        myY = y;
        mySize = size;
           
    }

    void roll() {
        dieValue = (int)(Math.random()*6 )+1;
    }

    void show() {
        fill(255);
        stroke(0);
        rect(myX, myY, mySize, mySize);

   rect(0, 700, 900, 800); 
        fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
       
        int dotSize = 10;
       if (dieValue == 1){
                drawDot(myX + mySize / 2, myY + mySize / 2, dotSize);
                sum = sum +1;
       }
            else if(dieValue==2){
                drawDot(myX + mySize / 4, myY + mySize / 4, dotSize);
                drawDot(myX + 3 * mySize / 4, myY + 3 * mySize / 4, dotSize);
                sum=sum+2;
            }
           else if(dieValue==3){
                drawDot(myX + mySize / 2, myY + mySize / 2, dotSize);
                drawDot(myX + mySize / 4, myY + mySize / 4, dotSize);
                drawDot(myX + 3 * mySize / 4, myY + 3 * mySize / 4, dotSize);
                sum=sum+3;
           }
            else if(dieValue==4){
                drawDot(myX + mySize / 4, myY + mySize / 4, dotSize);
                drawDot(myX + 3 * mySize / 4, myY + mySize / 4, dotSize);
                drawDot(myX + mySize / 4, myY + 3 * mySize / 4, dotSize);
                drawDot(myX + 3 * mySize / 4, myY + 3 * mySize / 4, dotSize);
                sum=sum+4;
            }
            else if(dieValue==5){
                drawDot(myX + mySize / 2, myY + mySize / 2, dotSize);
                drawDot(myX + mySize / 4, myY + mySize / 4, dotSize);
                drawDot(myX + 3 * mySize / 4, myY + mySize / 4, dotSize);
                drawDot(myX + mySize / 4, myY + 3 * mySize / 4, dotSize);
                drawDot(myX + 3 * mySize / 4, myY + 3 * mySize / 4, dotSize);
                sum=sum+5;
            }
           else{
                drawDot(myX + mySize / 4, myY + mySize / 4, dotSize);
                drawDot(myX + 3 * mySize / 4, myY + mySize / 4, dotSize);
                drawDot(myX + mySize / 4, myY + mySize / 2, dotSize);
                drawDot(myX + 3 * mySize / 4, myY + mySize / 2, dotSize);
                drawDot(myX + mySize / 4, myY + 3 * mySize / 4, dotSize);
                drawDot(myX + 3 * mySize / 4, myY + 3 * mySize / 4, dotSize);
                sum=sum+6;
           }
        }
    }

    void drawDot(int x, int y, int size) {
        ellipse(x, y, size, size);
      
    }




