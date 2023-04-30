import java.io.Serializable;

public class Node implements Serializable {
    public final int l;
    public final int r;
    public final int div;

    public Node(int l, int r, int div) {
        this.l = l;
        this.r = r;
        this.div = div;
    }
}