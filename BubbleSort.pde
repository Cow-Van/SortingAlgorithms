public class BubbleSort extends Algorithm {
    private int currentIndex = 0;
    private int lastSortedIndex;

    public BubbleSort(int[] list) {
        super(list);
        lastSortedIndex = list.length - 1;
    }

    public int step() {
        if (Utils.isSorted(list)) {
            return -1;
        }

        if (currentIndex == lastSortedIndex) {
            lastSortedIndex--;
            currentIndex = 0;
            return;
        }

        if (list[currentIndex] > list[currentIndex + 1]) {
            int temp = list[currentIndex];
            list[currentIndex] = list[currentIndex + 1];
            list[currentIndex + 1] = temp;
        }

        currentIndex++;

        return super.step();
    }

    public void draw() {
        super.draw();

        float startX = width * 0.5 - (WIDTH * (list.length - 1) + SPACING * (list.length - 1)) * 0.5;

        fill(0, 255, 0);
        ellipse(startX + currentIndex * (WIDTH + SPACING), height * 0.5, WIDTH, WIDTH);

        fill(0);
        text(list[currentIndex], startX + currentIndex * (WIDTH + SPACING), height * 0.5);
    }
}