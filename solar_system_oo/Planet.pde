class Planet {
	float theta = 0;      // Rotation around sun
	float diameter;   // Size of planet
	float distance;   // Distance from sun
	float orbitspeed; // Orbit speed
	String shape;
	color planetColor;
	Planet(float _distance, float _diameter, float _orbitspeed, color _planetColor, String _shape) {
		distance = _distance;
		diameter = _diameter;
		orbitspeed = _orbitspeed;
		planetColor = _planetColor;
		shape = _shape;
	}
	void update() {
		theta += orbitspeed;
	}
	void display() {
		// Before rotation and translation, the state of the matrix is saved with pushMatrix().
		pushMatrix(); 
		// Rotate orbit
		rotate(theta); 
		// Translate out distance
		translate(distance, 0);
		drawPlanet();
		// Once the planet is drawn, the matrix is restored with popMatrix() so that the next planet is not affected.
		popMatrix();
	}
	void drawPlanet() {
		fill(planetColor);
		switch(shape) {
			case "ellipse":
				ellipse(0, 0, diameter, diameter);
				break;
			case "triangle":
				triangle(0 - diameter, 0 - diameter, 0, 0, 0 + diameter, 0 - diameter);
				break;
			case "square":
				rect(0, 0, diameter, diameter);
				break;
			default:
				ellipse(0, 0, diameter, diameter);
				break;
		}
	}
}
