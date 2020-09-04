float initAngle = -HALF_PI;
int outerDiam = 400;
void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  translate(width / 2, height / 2);
  strokeWeight(10);
  noFill();
  
  // Hour
  float hourAngle = (hour() % 12) * (TWO_PI / 12) + initAngle;
  stroke(245, 245, 65);
  arc(0, 25, outerDiam - 100, outerDiam - 100, initAngle, hourAngle);
  
  // Minute
  float minuteAngle = (minute()) * (TWO_PI / 60) + initAngle;
  stroke(124, 221, 226);
  arc(0, 25, outerDiam - 50, outerDiam - 50, initAngle, minuteAngle);
  
  // Second
  float secondAngle = (second()) * (TWO_PI / 60) + initAngle;
  stroke(189, 124, 226);
  arc(0, 25, outerDiam, outerDiam, initAngle, secondAngle);
  
  // Text
  stroke(255);
  textAlign(CENTER, CENTER);
  textSize(40);
  String hourShow = "" + hour() % 12;
  String minuteShow = "" + minute();
  String secondShow = "" + second();
  if (minute() < 10) {
    minuteShow = "0" + minute();
  }
  if (second() < 10) {
    secondShow = "0" + second();
  }
  String currentTime = hourShow + ":" + minuteShow + ":" + secondShow;
  text(currentTime, 0, -225);
}
