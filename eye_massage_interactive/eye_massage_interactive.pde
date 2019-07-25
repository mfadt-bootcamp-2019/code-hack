PImage imgFace;
PImage imgText;
PImage imgTextExtreme;
PImage imgHand;
float minXCoord = 450;
float maxXCoord = 650;
float minYCoord = 300;
float maxYCoord = 350;
boolean showExtreme = false;

void setup() {
	imgFace = loadImage("cgi-face.png");
	imgText = loadImage("text.png");
	imgTextExtreme = loadImage("text-extreme.png");
	imgHand = loadImage("hand.png");
	size(800, 600);
	background(255);
}

void draw() {
	if (checkInBounds()) {
		if (showExtreme) {
			background(random(150, 255), random(150, 255), random(150, 255));
			image(imgFace, width/2 - 300 + random(-40, 40), 0 + random(-40, 40));
			image(imgHand, 30 + random(-40, 40), 225 + random(-40, 40));
			image(imgTextExtreme, 0 + random(-40, 40), 0 + random(-40, 40), width, height);
		} else {
			background(random(150, 255), random(150, 255), random(150, 255));
			image(imgFace, width/2 - 300 + random(-8, 8), 0 + random(-8, 8));
			image(imgHand, 30 + random(-8, 8), 225 + random(-8, 8));
			image(imgText, 0 + random(-8, 8), 0 + random(-8, 8), width, height);
		}
	} else {
		background(255);
		image(imgFace, 400, 0);
		image(imgHand, mouseX - 150 + random(-2, 2), mouseY - 102 + random(-2, 2));
	}
}

void mousePressed() {
	if (checkInBounds()) {
		showExtreme = true;
	}
}

void mouseReleased() {
	showExtreme = false;
}

boolean checkInBounds() {
	return (mouseX > minXCoord && mouseX < maxXCoord) && (mouseY > minYCoord && mouseY < maxYCoord);
}
