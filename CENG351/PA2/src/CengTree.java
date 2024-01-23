import java.util.ArrayList;

public class CengTree {
    public CengTreeNode root;

    public CengTree(Integer order) {
        CengTreeNode.order = order;
        root = new CengTreeNodeLeaf(null);
    }

    public void addBook(CengBook book) {
        CengTreeNode nroot = root.add(book);
        if (nroot != null) root = nroot;
    }

    public ArrayList<CengTreeNode> searchBook(Integer bookID) {
        ArrayList<CengTreeNode> visited = root.search(bookID, 0);
        int level = 0;
        if (visited == null) {
            System.out.println("Could not find " + bookID + ".");
        } else {
            for (int i = visited.size() - 1; i >= 0; --i) {
                CengTreeNode cur = visited.get(i);

                if (cur instanceof CengTreeNodeInternal) {
                    CengTreeNodeInternal curi = (CengTreeNodeInternal) cur;
                    StringBuilder out = new StringBuilder();

                    out.append("\t".repeat(Math.max(0, level))).append("<index>\n");
                    for (int key : curi.getKeys())
                        out.append("\t".repeat(Math.max(0, level))).append(key).append("\n");
                    out.append("\t".repeat(Math.max(0, level))).append("<\\index>");

                    System.out.println(out);
                } else {
                    CengTreeNodeLeaf curl = (CengTreeNodeLeaf) cur;
                    StringBuilder out = new StringBuilder();
                    CengBook book = null;

                    for (CengBook b : curl.getBooks()) {
                        if (b.getBookID().equals(bookID)) {
                            book = b;
                            break;
                        }
                    }

                    assert book != null;

                    out.append("\t".repeat(Math.max(0, level)));
                    out.append("<record>").
                            append(book.getBookID()).append("|").
                            append(book.getBookTitle()).append("|").
                            append(book.getAuthor()).append("|").
                            append(book.getGenre()).append("<\\record>");

                    System.out.println(out);
                }

                level++;
            }
        }
        return visited;
    }

    public void printTree() {
        root.print(0);
    }

    // Any extra functions...
}
