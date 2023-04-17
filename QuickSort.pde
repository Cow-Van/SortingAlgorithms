public class QuickSort {
    private int i = 0;
    private int j = 0;

    public QuickSort(int[] list) {
        super(list);
        lastSortedIndex = list.length - 1;
    }

    public int step() { // Quick sort step by step
        

        return super.step();
    }

    public void draw() {
        super.draw();

        // For adding the green circle
        float startX = width * 0.5 - (WIDTH * (list.length - 1) + SPACING * (list.length - 1)) * 0.5;

        fill(0, 255, 0);
        ellipse(startX + j * (WIDTH + SPACING), height * 0.5, WIDTH, WIDTH);

        fill(0);
        text(list[j], startX + j * (WIDTH + SPACING), height * 0.5);
    }

    
}