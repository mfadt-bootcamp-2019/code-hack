Ball balls[] = new Ball[100];

void setup() {
	size(800, 800);
	smooth();
	noStroke();
	for (int i = 0; i < balls.length; i++) {
		balls[i] = new Ball(random(width), random(height));
	}
}

void draw() {
	background(255);
	for (int i = 0; i < balls.length; i++) {
		balls[i].draw();
	}
}
