import java.util.ArrayList;

public class CengTreeNodeLeaf extends CengTreeNode {
    private ArrayList<CengBook> books;
    // TODO: Any extra attributes

    public CengTreeNodeLeaf(CengTreeNode parent) {
        super(parent);

        books = new ArrayList<>();
        type = CengNodeType.Leaf;
        // TODO: Extra initializations
    }

    public CengTreeNode add(CengBook book) {
        if (getParent() == null) { //Then this is the root node
            if (books.size() < 2 * CengTreeNode.order) {
                books.add(book);
                books.sort(new CengTreeNode.SortByBookID());
                return this;
            } else {
                books.add(book);
                books.sort(new CengTreeNode.SortByBookID());

                CengTreeNodeInternal nroot = new CengTreeNodeInternal(null);
                CengTreeNodeLeaf nleaf = new CengTreeNodeLeaf(nroot);

                int middlei = books.size() / 2;
                int middle = books.get(middlei).getBookID();

                ArrayList<CengBook> lefts = new ArrayList<>();
                ArrayList<CengBook> rights = new ArrayList<>();

                for (int i = 0; i < middlei; ++i) lefts.add(books.get(i));
                for (int i = middlei; i < books.size(); ++i) rights.add(books.get(i));

                nleaf.books = rights;
                this.books = lefts;

                nroot.getKeys().add(middle);
                nroot.getChildren().add(this);
                nroot.getChildren().add(nleaf);

                setParent(nroot);
                return nroot;
            }
        } else {
            if (books.size() < 2 * CengTreeNode.order) {
                books.add(book);
                books.sort(new CengTreeNode.SortByBookID());

                return null;
            } else {
                books.add(book);
                books.sort(new CengTreeNode.SortByBookID());

                CengTreeNodeLeaf nleaf = new CengTreeNodeLeaf(getParent());

                int middlei = books.size() / 2;
                int middle = books.get(middlei).getBookID();

                ArrayList<CengBook> lefts = new ArrayList<>();
                ArrayList<CengBook> rights = new ArrayList<>();

                for (int i = 0; i < middlei; ++i) lefts.add(books.get(i));
                for (int i = middlei; i < books.size(); ++i) rights.add(books.get(i));

                nleaf.books = rights;
                this.books = lefts;

                return ((CengTreeNodeInternal) getParent()).addKey(middle, nleaf);
            }
        }
    }

    @Override
    public ArrayList<CengTreeNode> search(Integer id, int level) {
        CengBook book = null;
        ArrayList<CengTreeNode> visited = null;

        for (CengBook b : books) {
            if (b.getBookID().equals(id)) {
                book = b;
                break;
            }
        }

        if (book != null) {
            visited = new ArrayList<>();
            visited.add(this);
        }

        return visited;
    }

    @Override
    public void print(int level) {
        StringBuilder out = new StringBuilder();

        out.append("\t".repeat(Math.max(0, level))).append("<data>").append("\n");
        for (CengBook book : books) {
            out.append("\t".repeat(Math.max(0, level)));
            out.append("<record>").
                    append(book.getBookID()).append("|").
                    append(book.getBookTitle()).append("|").
                    append(book.getAuthor()).append("|").
                    append(book.getGenre()).append("<\\record>").append("\n");
        }
        out.append("\t".repeat(Math.max(0, level))).append("<\\data>");

        System.out.println(out);
    }

    @Override
    public void sort() {
        books.sort(new CengTreeNode.SortByBookID());
    }

    public ArrayList<CengBook> getBooks() {
        return books;
    }

    // GUI Methods - Do not modify
    public int bookCount() {
        return books.size();
    }
    public Integer bookKeyAtIndex(Integer index) {
        if(index >= this.bookCount()) {
            return -1;
        } else {
            CengBook book = this.books.get(index);

            return book.getBookID();
        }
    }

    // Extra Functions
}
