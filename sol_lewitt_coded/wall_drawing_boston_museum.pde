// Sol Lewitt Wall Drawing Boston Museum
// Anna Garbier

void setup() {
  size(1000, 500);
  background(250, 250, 255, 50);
  fill(50, 30);
  stroke(50, 30);
  strokeWeight(.1);
  noLoop();
}

void draw() {
  // Number of points
  int num_points = 50;
  
  // Place fifty points at random
  float[][] points = new float[num_points][2];
  for (int i = 0; i < num_points; i++) {
    points[i][0] = random(width);
    points[i][1] = random(height);
    ellipse(points[i][0], points[i][1], 2, 2);
  }
  
  // Connect the points with straight lines
  for (int i = 0; i < num_points; i++) {
    for (int j = 1; j < num_points; j++) {
      line(
        points[i][0], points[i][1],
        points[(i + j) % num_points][0], points[(i + j) % num_points][1]
      );
    }
  }
}
