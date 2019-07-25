float radius = 100;

void setup() {
	size(800, 600);
	background(255);
}

void draw() {
	fill(255, 255, 255, 0);
	stroke(random(150, 255), random(150, 255), random(150, 255));
	strokeWeight(radius/20);
	ellipse(mouseX, mouseY, radius, radius);
	if (radius <= width * 1.5) {
		radius = radius + 2;
	}
}

void mouseMoved() {
	if (radius >= 20) {
		radius--;
	}
}

void mouseClicked() {
	background(255);
}
