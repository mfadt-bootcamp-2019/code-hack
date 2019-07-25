/**
 *
 * Based on code from Dan Shiffman's
 * Purple Rain example
 * https://www.youtube.com/watch?v=KkyIDI6rQJI
 * 
 */
Drop[] drops = new Drop[100];
PImage vienna;

void setup() {
	size(950, 630);
	vienna = loadImage("vienna.jpg");
	createMen();
}

void createMen() {
	for (int i = 0; i < drops.length; i++) {
		drops[i] = new Drop();
	}
}

void updateMen() {
	for (int i = 0; i < drops.length; i++) {
		drops[i].fall();
		drops[i].show();
	}
}

void drawVienna() {
	background(255);
	image(vienna, 0, 0, width, height);
}

void draw() {
	drawVienna();
	updateMen();
}
