import java.awt.Color;
import java.util.ArrayList;
import java.util.Comparator;

public abstract class CengTreeNode {
    static protected Integer order;
    private CengTreeNode parent;
    protected CengNodeType type; // Type needs to be set for proper GUI. Check CengNodeType.java.

    // GUI Accessors - do not modify
    public Integer level;
    public Color color;

    // Any extra attributes, if necessary

    public CengTreeNode(CengTreeNode parent) {
        this.parent = parent;

        this.color = CengGUI.getRandomBorderColor();

        // TODO: Extra initializations, if necessary.
    }

    public abstract CengTreeNode add(CengBook book);
    public abstract ArrayList<CengTreeNode> search(Integer id, int level);
    public abstract void print(int level);
    public abstract void sort();

    // Getters-Setters - Do not modify
    public CengTreeNode getParent() {
        return parent;
    }

    public void setParent(CengTreeNode parent) {
        this.parent = parent;
    }

    public CengNodeType getType() {
        return type;
    }

    // GUI Methods - Do not modify
    public Color getColor() {
        return this.color;
    }

    public static class SortByBookID implements Comparator<CengBook> {

        @Override
        public int compare(CengBook cengBook, CengBook t1) {
            return cengBook.getBookID().compareTo(t1.getBookID());
        }
    }

    public static class SortByNode implements Comparator<CengTreeNode> {

        @Override
        public int compare(CengTreeNode n1, CengTreeNode n2) {
            Integer k1 = (n1 instanceof CengTreeNodeInternal) ? ((CengTreeNodeInternal) n1).getKeys().get(0) : ((CengTreeNodeLeaf) n1).getBooks().get(0).getBookID();
            Integer k2 = (n2 instanceof CengTreeNodeInternal) ? ((CengTreeNodeInternal) n2).getKeys().get(0) : ((CengTreeNodeLeaf) n2).getBooks().get(0).getBookID();

            return k1.compareTo(k2);

        }
    }
    // Extra Functions
}
