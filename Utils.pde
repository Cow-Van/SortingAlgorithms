public class Utils {
    public static boolean isSorted(int[] list) {
        if (list.length < 2) {
            throw new IllegalArgumentException("List length less than 2!");
        }

        for (int i = 1; i < list.length; i++) {
            if (list[i - 1] > list[i]) {
                return false;
            }
        }

        return true;
    }
}