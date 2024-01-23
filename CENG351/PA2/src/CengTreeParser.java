import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.io.File;
import java.util.Scanner;

public class CengTreeParser
{
    public static ArrayList<CengBook> parseBooksFromFile(String filename) {
        ArrayList<CengBook> bookList = new ArrayList<CengBook>();

        // You need to parse the input file in order to use GUI tables.
        // TODO: Parse the input file, and convert them into CengBooks

        try {
            File file = new File(filename);
            Scanner scanner = new Scanner(file);
            while (scanner.hasNextLine()) {
                String data = scanner.nextLine();
                String[] params = data.split("\\|");

                CengBook book = new CengBook(Integer.parseInt(params[0]), params[1], params[2], params[3]);
                bookList.add(book);
            }
            scanner.close();
        } catch (FileNotFoundException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }

        return bookList;
    }

    public static void startParsingCommandLine() throws IOException {
        // TODO: Start listening and parsing command line -System.in-.
        // There are 4 commands:
        // 1) quit : End the app, gracefully. Print nothing, call nothing, just break off your command line loop.
        // 2) add : Parse and create the book, and call CengBookRunner.addBook(newlyCreatedBook).
        // 3) search : Parse the bookID, and call CengBookRunner.searchBook(bookID).
        // 4) print : Print the whole tree, call CengBookRunner.printTree().
        Scanner scanner = new Scanner(System.in);

        while (true) {
            String command  = scanner.next();

            if (command.startsWith("quit")) {
                break;
            } else if (command.startsWith("add")) {
                String[] params = command.split("\\|");
                CengBook book = new CengBook(Integer.parseInt(params[1]), params[2], params[3], params[4]);
                CengBookRunner.addBook(book);
            } else if (command.startsWith("search")) {
                String[] params = command.split("\\|");
                int bookid = Integer.parseInt(params[1]);

                CengBookRunner.searchBook(bookid);
            } else if (command.startsWith("print")) {
                CengBookRunner.printTree();
            }
        }
        // Commands (quit, add, search, print) are case-insensitive.
    }
}
