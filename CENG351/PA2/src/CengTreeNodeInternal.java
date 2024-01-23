import java.util.ArrayList;
import java.util.Collections;

public class CengTreeNodeInternal extends CengTreeNode {
    private ArrayList<Integer> keys;
    private ArrayList<CengTreeNode> children;

    public CengTreeNodeInternal(CengTreeNode parent) {
        super(parent);

        keys = new ArrayList<>();
        children = new ArrayList<>();
        type = CengNodeType.Internal;
    }

    public CengTreeNode add(CengBook book) {
        int nodei = keys.size();
        for (int i = 0; i < keys.size(); ++i) {
            if (book.getBookID() < keys.get(i)) {
                nodei = i;
                break;
            }
        }

        return children.get(nodei).add(book);
    }

    @Override
    public ArrayList<CengTreeNode> search(Integer id, int level) {
        int nodei = keys.size();
        for (int i = 0; i < keys.size(); ++i) {
            if (id < keys.get(i)) {
                nodei = i;
                break;
            }
        }

        ArrayList<CengTreeNode> visited = children.get(nodei).search(id, level + 1);

        if (visited != null) visited.add(this);

        return visited;
    }

    @Override
    public void print(int level) {
        StringBuilder out = new StringBuilder();

        out.append("\t".repeat(Math.max(0, level))).append("<index>\n");
        for (int key : keys)
            out.append("\t".repeat(Math.max(0, level))).append(key).append("\n");
        out.append("\t".repeat(Math.max(0, level))).append("<\\index>");

        System.out.println(out);

        for (CengTreeNode child : children)
            child.print(level + 1);
    }

    public void sort() {
        Collections.sort(keys);
        children.sort(new SortByNode());
    }

    public CengTreeNode addKey(int key, CengTreeNode node) {
        if (getParent() == null) { //Then this is the parent node
            if (keys.size() < CengTreeNode.order * 2) {
                keys.add(key);
                children.add(node);
                sort();

                return this;
            } else {
                keys.add(key);
                children.add(node);
                sort();

                CengTreeNodeInternal nroot = new CengTreeNodeInternal(null);
                CengTreeNodeInternal nnode = new CengTreeNodeInternal(nroot);

                int middlei = keys.size() / 2;
                int middle = keys.get(middlei);

                ArrayList<Integer> leftkeys = new ArrayList<>();
                ArrayList<CengTreeNode> leftnodes = new ArrayList<>();
                ArrayList<Integer> rightkeys = new ArrayList<>();
                ArrayList<CengTreeNode> rightnodes = new ArrayList<>();

                for (int i = 0; i < middlei; ++i) {
                    leftkeys.add(keys.get(i));
                }

                for (int i = middlei + 1; i < keys.size(); ++i) {
                    rightkeys.add(keys.get(i));
                }

                for (int i = 0; i <= middlei; ++i) {
                    leftnodes.add(children.get(i));
                }

                for (int i = middlei + 1; i < children.size(); ++i) {
                    rightnodes.add(children.get(i));
                }

                setParent(nroot);
                this.keys = leftkeys;
                this.children = leftnodes;
                nnode.keys = rightkeys;
                nnode.children = rightnodes;

                for (CengTreeNode n : nnode.children) n.setParent(nnode);

                nroot.getKeys().add(middle);
                nroot.getChildren().add(this);
                nroot.getChildren().add(nnode);
                nroot.sort();

                return nroot;
            }
        } else {
            if (keys.size() < CengTreeNode.order * 2) {
                keys.add(key);
                children.add(node);
                sort();

                return null;
            } else {
                keys.add(key);
                children.add(node);
                sort();

                CengTreeNodeInternal nnode = new CengTreeNodeInternal(getParent());

                int middlei = keys.size() / 2;
                int middle = keys.get(middlei);

                ArrayList<Integer> leftkeys = new ArrayList<>();
                ArrayList<CengTreeNode> leftnodes = new ArrayList<>();
                ArrayList<Integer> rightkeys = new ArrayList<>();
                ArrayList<CengTreeNode> rightnodes = new ArrayList<>();

                for (int i = 0; i < middlei; ++i) {
                    leftkeys.add(keys.get(i));
                }

                for (int i = middlei + 1; i < keys.size(); ++i) {
                    rightkeys.add(keys.get(i));
                }

                for (int i = 0; i <= middlei; ++i) {
                    leftnodes.add(children.get(i));
                }

                for (int i = middlei + 1; i < children.size(); ++i) {
                    rightnodes.add(children.get(i));
                }

                this.keys = leftkeys;
                this.children = leftnodes;
                nnode.keys = rightkeys;
                nnode.children = rightnodes;

                for (CengTreeNode n : nnode.children) n.setParent(nnode);


                return ((CengTreeNodeInternal) getParent()).addKey(middle, nnode);
            }
        }
    }

    public ArrayList<Integer> getKeys() {
        return keys;
    }

    public ArrayList<CengTreeNode> getChildren() {
        return children;
    }

    // GUI Methods - Do not modify
    public ArrayList<CengTreeNode> getAllChildren() {
        return this.children;
    }
    public Integer keyCount() {
        return this.keys.size();
    }
    public Integer keyAtIndex(Integer index) {
        if (index >= this.keyCount() || index < 0) {
            return -1;
        } else {
            return this.keys.get(index);
        }
    }

    // Extra Functions
}
