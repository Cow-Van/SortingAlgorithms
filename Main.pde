Algorithm sort = new QuickSort(new int[]{1782, 7281, 6990, 1644, 9111, 4710, 4525, 7867, 2762, 4887});

public void setup() {
    size(500, 500);
    background(0);
    textAlign(CENTER, CENTER);

    sort.draw();
}

public void keyPressed() { // Step forward every space press
    background(0);

    if (key == ' ') {
        sort.step();
        sort.draw();
    }
}