public abstract class Algorithm {
    public static final int WIDTH = 40;
    public static final int SPACING = 10;

    protected int stepCount = 0;
    protected int[] list;

    protected Algorithm(int[] list) {
        if (list.length < 1) {
            throw new IllegalArgumentException("List length must be at least one!");
        }

        this.list = list;
    }

    public int step() {
        return stepCount++;
    }

    public void draw() {
        float startX = width * 0.5 - (WIDTH * (list.length - 1) + SPACING * (list.length - 1)) * 0.5;

        for (int i = 0; i < list.length; i++) {
            fill(255);
            ellipse(startX + i * (WIDTH + SPACING), height * 0.5, WIDTH, WIDTH);

            fill(0);
            text(list[i], startX + i * (WIDTH + SPACING), height * 0.5);
        }
    }
}