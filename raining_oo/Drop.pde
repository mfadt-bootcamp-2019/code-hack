class Drop {
	PImage imgMan;
	float x = random(-50, width);
	float y = random(-height * 2, 0);
	float yspeed = random(4, 8);
	int randomWidth = int(random(30, 50));

	Drop() {
		imgMan = loadImage("man.png");
		noStroke();
	}

	void fall() {
		y = y + yspeed;
		yspeed = yspeed + 0.05;
		if (y > height) {
			x = random(-50, width);
			y = random(-200, -100);
			yspeed = random(4, 8);
			randomWidth = int(random(30, 50));
		}
	}
	
	void show() {
		//image(imgMan, x, y, randomWidth, randomWidth * 1.5);
		image(imgMan, x, y, randomWidth, randomWidth * 0.9);
	}
}
