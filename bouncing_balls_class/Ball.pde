// The Ball Class
class Ball {
	// Variables
	float x, y;
	float speedX = 4;
	float speedY = 0.5;
	float rad = 20;
	color startColor = color(255, 40, 20);
	color endColor = color(20, 40, 255);

	// Constructor
	Ball(float _x, float _y) {
		x = _x;
		y = _y;
	}

	// The draw function
	void draw() {
		move();
		bounce();
		gravity();
		display();
	}

	void move() {
		x = x + speedX;
    	y = y + speedY;
	}

	void bounce() {
		if((x > width) || (x < 0)) {
			speedX = speedX * -1;
		}
		if((y > height) || (y < 0)) {
			speedY = speedY * -1;
		}
	}

	void gravity() {
		speedY = speedY + 0.2;
	}

	void display() {
		pushStyle();
		fill(lerpColor(startColor, endColor, x/width));
		ellipse(x, y, rad, rad);
		popStyle();
	}
}
