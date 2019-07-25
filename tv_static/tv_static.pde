int[][] pixelArray = new int[width][height];
int increment = 10;

void setup() {
	size(800, 800);
	background(255);
	noStroke();
	updatePixelArray();
}

void draw() {
	updatePixelArray();
}

void updatePixelArray() {
	for (int i = 0; i < height; i+=increment) {
		for (int j = 0; j < width; j+=increment) {
			fill(int(random(255)));
			rect(i, j, increment, increment);
		}
	}
}
