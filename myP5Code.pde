//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var firework1 = 20;

var firework2 = 20;

var firework3 = 20;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  
  background(255,255,255,0);

  
   if(mousePressed){
    showXYPositions();
    
    if(firework1Size > 50){
firework1Size = 20;
}
    
  }
  
  //🎯Animation Code Goes Here
 
 //firework line
  fill(255, 255, 255);
  rect(200,firework1, 10, 400);
  
  // firework explosion
  fill(255, 193, 185);
  ellipse(200, 100, firework2, 100);
  ellipse(300, 150, firework3, 100);
  
  firework2 += 1;
  firework1 -= 5;
  firework3 += 2;

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
