color blue = color(0, 125, 193);
color red = color(255, 0, 0);
color yellow = color(249, 233, 0);
color black = color(0, 0, 0);
color white = color(243, 243, 243);
color gray = color(64, 64, 64);

void setup() {
	size(800, 800);
	background(white);
	stroke(gray);
	strokeWeight(6);
	frameRate(8);
}

void draw() {
	int j = int(random(0, 5));
	switch(j) {
		case 0:
			fill(black);
			break;
		case 1:
			fill(red);
			break;
		case 2:
			fill(blue);
			break;
		case 3:
			fill(yellow);
			break;
		default:
			fill(white);
			break;
	}
	float ranWidth = random(10, 350);
	float ranHeight = random(10, 350);
	float ranX = random(0, width - ranWidth);
	float ranY = random(0, height - ranHeight);
	rect(int(ranX), int(ranY), int(ranWidth), int(ranHeight));
}
