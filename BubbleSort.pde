public class BubbleSort extends Algorithm {
    private int i = 0;
    private int j = 0;

    public BubbleSort(int[] list) {
        super(list);
    }

    public int step() { // Bubble sort step by step
        if (i > list.length) {
            return;
        }

        if (list[j] > list[j + 1]) {
            int temp = list[j];
            list[j] = list[j + 1];
            list[j + 1] = temp;
        }

        j++;

        if (j > list.length - i) {
            i++;
            j = 0;
        }

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