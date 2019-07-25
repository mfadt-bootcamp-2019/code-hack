// Object Oriented Solar System
Planet[] planets = new Planet[10];
String[] shapesArray = {"square", "triangle", "ellipse"};

void setup() {
	size(800, 800);
	// CREATE THE PLANETS
	for (int i = 0; i < planets.length; i++) {
		planets[i] = new Planet(64 + i*32, 24, random(0.01, 0.03), color(random(100, 255), random(100, 255), random(100, 255)), shapesArray[i%3]);
	}
	background(0);
	noStroke();
}

void draw() {
	fill(255, 100);
	rect(0, 0, width, height);
	// Drawing the Sun
	pushMatrix();
	translate(width/2, height/2);
	noStroke();
	fill(255, 230, 80);
	ellipse(random(-2, 2), random(-2, 2), 64, 64);
	// Drawing all Planets
	for (int i = 0; i < planets.length; i++ ) {
		planets[i].update();
		planets[i].display();
	}
	popMatrix();
}
