size(600, 600);

background(100);

// "width" and "height" are system variables

line(0, 0, width, height);

ellipse(width/2, height/2, width, height);

// fill with 4 numbers is red, green, blue, opacity
fill(255, 0, 0, 111);
ellipse(100, 100, 100, 100);

fill(0, 255, 0, 111);
ellipse(120, 120, 100, 100);

strokeWeight(4);
// draw a line down the middle
line(width/2, 0, width/2, height);
// draw a line across the middle
line(0, height/2, width, height/2);

// triangle
// x1, y1, x2, y2, x3, y3
triangle(width/2, 0, 0, height, width, height);

// thinking in quarters...
ellipse(width*.25, height*.75,100,100);
