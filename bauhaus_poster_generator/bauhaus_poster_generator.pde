// Colors
color blue = color(0, 140, 166);
color red = color(255, 75, 95);
color yellow = color(255, 199, 97);
color black = color(54, 53, 52);
color white = color(243, 243, 243);
color gray = color(64, 64, 64);
// Strings
String[] lines;

void setup() {
	size(800, 800);
	noStroke();
	noLoop();
	// Strings
	lines = loadStrings("names.txt");
}

void draw() {
	background(white);
	// Draw some shapes
	for (int i = 0; i < 10; i++) {
		int ranColorInt = int(random(0, 3));
		color randomColor;
		switch(ranColorInt) {
			case 0:
				randomColor = red;
				break;
			case 1:
				randomColor = blue;
				break;
			case 2:
				randomColor = yellow;
				break;
			default:
				randomColor = white;
				break;
		}
		if (i < 5) {
			strokeWeight(10);
			stroke(randomColor);
			line(int(random(-100, width)), int(random(-100, height)), int(random(-100, width)), int(random(-100, height)));
		} else if (i < 10) {
			noStroke();
			fill(randomColor);
			ellipse(int(random(-100, width)), int(random(-100, height)), 100, 100);
		}
	}
	// Draw some text
	textSize(180);
	fill(black);
	text(lines[int(random(0, lines.length))], 0, 0, width, height);
}

/**
 * When we press "r" or "R" we want to redraw
 */
void keyPressed() {
	if (key=='r' || key == 'R') {
		redraw();
	}
}
