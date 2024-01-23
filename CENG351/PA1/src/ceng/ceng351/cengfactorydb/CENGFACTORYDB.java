package ceng.ceng351.cengfactorydb;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CENGFACTORYDB implements ICENGFACTORYDB {

    private final String user = "e2587921"; // TODO: Your userName
    private final String password = "^W2OV*U9+^Xh"; //  TODO: Your password
    private final String host = "144.122.71.128"; // host name
    private final String database = "db2587921"; // TODO: Your database name
    private final int port = 8080; // port

    private Connection connection = null;

    /**
     * Place your initialization code inside if required.
     *
     * <p>
     * This function will be called before all other operations. If your implementation
     * need initialization , necessary operations should be done inside this function. For
     * example, you can set your connection to the database server inside this function.
     */
    public void initialize() {
        String url = "jdbc:mysql://" + host + ":" + port + "/" + database;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection =  DriverManager.getConnection(url, user, password);
        }
        catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    /**
     * Should create the necessary tables when called.
     *
     * @return the number of tables that are created successfully.
     */
    public int createTables() {
        int count = 6;
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate("CREATE TABLE Factory (" +
                    "factoryId INT PRIMARY KEY," +
                    "factoryName TEXT," +
                    "factoryType TEXT," +
                    "country TEXT);");
        } catch (SQLException e) {
            count--;
            e.printStackTrace();
        }

        // Create Employee table
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate("CREATE TABLE Employee (" +
                    "employeeId INT PRIMARY KEY," +
                    "employeeName TEXT," +
                    "department TEXT," +
                    "salary INT);");
        } catch (SQLException e) {
            count--;
            e.printStackTrace();
        }

        // Create Works_In table
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate("CREATE TABLE Works_In (" +
                    "factoryId INT," +
                    "employeeId INT," +
                    "startDate DATE," +
                    "PRIMARY KEY (factoryId, employeeId)," +
                    "FOREIGN KEY (factoryId) REFERENCES Factory(factoryId)," +
                    "FOREIGN KEY (employeeId) REFERENCES Employee(employeeId) ON DELETE CASCADE);");
        } catch (SQLException e) {
            count--;
            e.printStackTrace();
        }

        // Create Product table
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate("CREATE TABLE Product (" +
                    "productId INT PRIMARY KEY," +
                    "productName TEXT," +
                    "productType TEXT);");
        } catch (SQLException e) {
            count--;
            e.printStackTrace();
        }

        // Create Produce table
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate("CREATE TABLE Produce (" +
                    "factoryId INT," +
                    "productId INT," +
                    "amount INT," +
                    "productionCost INT," +
                    "PRIMARY KEY (factoryId, productId)," +
                    "FOREIGN KEY (factoryId) REFERENCES Factory(factoryId)," +
                    "FOREIGN KEY (productId) REFERENCES Product(productId));");
        } catch (SQLException e) {
            count--;
            e.printStackTrace();
        }

        // Create Shipment table
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate("CREATE TABLE Shipment (" +
                    "factoryId INT," +
                    "productId INT," +
                    "amount INT," +
                    "pricePerUnit INT," +
                    "PRIMARY KEY (factoryId, productId)," +
                    "FOREIGN KEY (factoryId) REFERENCES Factory(factoryId)," +
                    "FOREIGN KEY (productId) REFERENCES Product(productId));");
        } catch (SQLException e) {
            count--;
            e.printStackTrace();
        }

        return count;
    }

    /**
     * Should drop the tables if exists when called.
     *
     * @return the number of tables are dropped successfully.
     */
    public int dropTables() {
        int count = 6;
        // Drop Works_In table
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate("DROP TABLE IF EXISTS Works_In;");
            System.out.println("Works_In table dropped successfully!");
        } catch (SQLException e) {
            count--;
            e.printStackTrace();
        }

        // Drop Produce table
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate("DROP TABLE IF EXISTS Produce;");
            System.out.println("Produce table dropped successfully!");
        } catch (SQLException e) {
            count--;
            e.printStackTrace();
        }

        // Drop Shipment table
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate("DROP TABLE IF EXISTS Shipment;");
            System.out.println("Shipment table dropped successfully!");
        } catch (SQLException e) {
            count--;
            e.printStackTrace();
        }

        // Drop Employee table
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate("DROP TABLE IF EXISTS Employee;");
            System.out.println("Employee table dropped successfully!");
        } catch (SQLException e) {
            count--;
            e.printStackTrace();
        }

        // Drop Product table
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate("DROP TABLE IF EXISTS Product;");
            System.out.println("Product table dropped successfully!");
        } catch (SQLException e) {
            count--;
            e.printStackTrace();
        }

        // Drop Factory table
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate("DROP TABLE IF EXISTS Factory;");
            System.out.println("Factory table dropped successfully!");
        } catch (SQLException e) {
            count--;
            e.printStackTrace();
        }

        return count;
    }

    /**
     * Should insert an array of Factory into the database.
     *
     * @return Number of rows inserted successfully.
     */
    public int insertFactory(Factory[] factories) {
        int rowsInserted = 0;

        String insertQuery = "INSERT INTO Factory (factoryId, factoryName, factoryType, country) VALUES (?, ?, ?, ?);";

        try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {
            for (Factory factory : factories) {
                preparedStatement.setInt(1, factory.getFactoryId());
                preparedStatement.setString(2, factory.getFactoryName());
                preparedStatement.setString(3, factory.getFactoryType());
                preparedStatement.setString(4, factory.getCountry());

                // Execute the INSERT statement
                int result = preparedStatement.executeUpdate();

                // Check if the row was successfully inserted
                if (result > 0) {
                    rowsInserted++;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rowsInserted;
    }

    /**
     * Should insert an array of Employee into the database.
     *
     * @return Number of rows inserted successfully.
     */
    public int insertEmployee(Employee[] employees) {
        int rowsInserted = 0;

        // Assuming you have a valid Connection object in the class

        String insertQuery = "INSERT INTO Employee (employeeId, employeeName, department, salary) VALUES (?, ?, ?, ?);";

        try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {
            for (Employee employee : employees) {
                preparedStatement.setInt(1, employee.getEmployeeId());
                preparedStatement.setString(2, employee.getEmployeeName());
                preparedStatement.setString(3, employee.getDepartment());
                preparedStatement.setInt(4, employee.getSalary());

                // Execute the INSERT statement
                int result = preparedStatement.executeUpdate();

                // Check if the row was successfully inserted
                if (result > 0) {
                    rowsInserted++;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rowsInserted;
    }

    /**
     * Should insert an array of WorksIn into the database.
     *
     * @return Number of rows inserted successfully.
     */
    public int insertWorksIn(WorksIn[] worksIns) {
        int rowsInserted = 0;

        // Assuming you have a valid Connection object in the class

        String insertQuery = "INSERT INTO Works_In (factoryId, employeeId, startDate) VALUES (?, ?, ?);";

        try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {
            for (WorksIn worksIn : worksIns) {
                preparedStatement.setInt(1, worksIn.getFactoryId());
                preparedStatement.setInt(2, worksIn.getEmployeeId());
                preparedStatement.setString(3, worksIn.getStartDate());

                // Execute the INSERT statement
                int result = preparedStatement.executeUpdate();

                // Check if the row was successfully inserted
                if (result > 0) {
                    rowsInserted++;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rowsInserted;
    }

    /**
     * Should insert an array of Product into the database.
     *
     * @return Number of rows inserted successfully.
     */
    public int insertProduct(Product[] products) {
        int rowsInserted = 0;

        // Assuming you have a valid Connection object in the class

        String insertQuery = "INSERT INTO Product (productId, productName, productType) VALUES (?, ?, ?);";

        try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {
            for (Product product : products) {
                preparedStatement.setInt(1, product.getProductId());
                preparedStatement.setString(2, product.getProductName());
                preparedStatement.setString(3, product.getProductType());

                // Execute the INSERT statement
                int result = preparedStatement.executeUpdate();

                // Check if the row was successfully inserted
                if (result > 0) {
                    rowsInserted++;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rowsInserted;
    }


    /**
     * Should insert an array of Produce into the database.
     *
     * @return Number of rows inserted successfully.
     */
    public int insertProduce(Produce[] produces) {
        int rowsInserted = 0;

        // Assuming you have a valid Connection object in the class

        String insertQuery = "INSERT INTO Produce (factoryId, productId, amount, productionCost) VALUES (?, ?, ?, ?);";

        try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {
            for (Produce produce : produces) {
                preparedStatement.setInt(1, produce.getFactoryId());
                preparedStatement.setInt(2, produce.getProductId());
                preparedStatement.setInt(3, produce.getAmount());
                preparedStatement.setInt(4, produce.getProductionCost());

                // Execute the INSERT statement
                int result = preparedStatement.executeUpdate();

                // Check if the row was successfully inserted
                if (result > 0) {
                    rowsInserted++;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rowsInserted;
    }


    /**
     * Should insert an array of Shipment into the database.
     *
     * @return Number of rows inserted successfully.
     */
    public int insertShipment(Shipment[] shipments) {
        int rowsInserted = 0;

        // Assuming you have a valid Connection object in the class

        String insertQuery = "INSERT INTO Shipment (factoryId, productId, amount, pricePerUnit) VALUES (?, ?, ?, ?);";

        try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {
            for (Shipment shipment : shipments) {
                preparedStatement.setInt(1, shipment.getFactoryId());
                preparedStatement.setInt(2, shipment.getProductId());
                preparedStatement.setInt(3, shipment.getAmount());
                preparedStatement.setInt(4, shipment.getPricePerUnit());

                // Execute the INSERT statement
                int result = preparedStatement.executeUpdate();

                // Check if the row was successfully inserted
                if (result > 0) {
                    rowsInserted++;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rowsInserted;
    }

    /**
     * Should return all factories that are located in a particular country.
     *
     * @return Factory[]
     */
    public Factory[] getFactoriesForGivenCountry(String country) {
        List<Factory> factories = new ArrayList<>();
        String selectQuery = "SELECT * FROM Factory WHERE country = ? ORDER BY factoryId ASC;";

        try (PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)) {
            preparedStatement.setString(1, country);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    int factoryId = resultSet.getInt("factoryId");
                    String factoryName = resultSet.getString("factoryName");
                    String factoryType = resultSet.getString("factoryType");

                    factories.add(new Factory(factoryId, factoryName, factoryType, country));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        Factory[] arr = new Factory[factories.size()];
        arr = factories.toArray(arr);
        return arr;
    }


    /**
     * Should return all factories without any working employees.
     *
     * @return Factory[]
     */
    public Factory[] getFactoriesWithoutAnyEmployee() {
        List<Factory> factories = new ArrayList<>();
        String selectQuery = "SELECT * FROM Factory F WHERE NOT EXISTS (SELECT * FROM Works_In W WHERE W.factoryId = F.factoryId) ORDER BY F.factoryId ASC;";

        try (PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)) {

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    int factoryId = resultSet.getInt("factoryId");
                    String factoryName = resultSet.getString("factoryName");
                    String factoryType = resultSet.getString("factoryType");
                    String country = resultSet.getString("country");

                    factories.add(new Factory(factoryId, factoryName, factoryType, country));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        Factory[] arr = new Factory[factories.size()];
        arr = factories.toArray(arr);
        return arr;
    }

    /**
     * Should return all factories that produce all products for a particular productType
     *
     * @return Factory[]
     */
    public Factory[] getFactoriesProducingAllForGivenType(String productType) {
        List<Factory> factories = new ArrayList<>();

        String selectQuery = "SELECT * " +
                "FROM Factory " +
                "WHERE factoryId IN ( " +
                "    SELECT DISTINCT f.factoryId" +
                "    FROM Factory f, Produce p, Product pr" +
                "    WHERE f.factoryId = p.factoryId" +
                "      AND p.productId = pr.productId" +
                "      AND pr.productType = ? " +
                ") " +
                "AND NOT EXISTS (" +
                "    SELECT DISTINCT pr.productId" +
                "    FROM Product pr" +
                "    WHERE pr.productType = ? " +
                "    AND pr.productId NOT IN ( " +
                "        SELECT DISTINCT p.productId " +
                "        FROM Produce p " +
                "        WHERE p.factoryId = Factory.factoryId " +
                "    ) " +
                ") ORDER BY Factory.factoryId ASC;";

        try (PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)) {
            preparedStatement.setString(1, productType);
            preparedStatement.setString(2, productType);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    int factoryId = resultSet.getInt("factoryId");
                    String factoryName = resultSet.getString("factoryName");
                    String factoryType = resultSet.getString("factoryType");
                    String country = resultSet.getString("country");

                    factories.add(new Factory(factoryId, factoryName, factoryType, country));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return factories.toArray(new Factory[0]);
    }


    /**
     * Should return the products that are produced in a particular factory but
     * don’t have any shipment from that factory.
     *
     * @return Product[]
     */
    public Product[] getProductsProducedNotShipped() {
        List<Product> products = new ArrayList<>();

        // Assuming you have a valid Connection object in the class

        String selectQuery = "SELECT p.* FROM Product p " +
                "WHERE p.productId IN " +
                "(SELECT DISTINCT pr.productId FROM Produce pr WHERE pr.productId = p.productId AND NOT EXISTS (SELECT 1 FROM Shipment S WHERE S.factoryId = pr.factoryId AND S.productId = p.productId)) " +
                " ORDER BY p.productId ASC;";

        try (PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)) {
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    int productId = resultSet.getInt("productId");
                    String productName = resultSet.getString("productName");
                    String productType = resultSet.getString("productType");

                    products.add(new Product(productId, productName, productType));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Convert the list to an array
        return products.toArray(new Product[0]);
    }


    /**
     * For a given factoryId and department, should return the average salary of
     *     the employees working in that factory and that specific department.
     *
     * @return double
     */
    public double getAverageSalaryForFactoryDepartment(int factoryId, String department) {
        double averageSalary = 0.0;

        String selectQuery = "SELECT AVG(salary) AS averageSalary " +
                "FROM Employee " +
                "WHERE employeeId IN " +
                "(SELECT employeeId FROM Works_In WHERE factoryId = ? AND department = ?)";

        try (PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)) {
            preparedStatement.setInt(1, factoryId);
            preparedStatement.setString(2, department);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    averageSalary = resultSet.getDouble("averageSalary");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return averageSalary;
    }


    /**
     * Should return the most profitable products for each factory
     *
     * @return QueryResult.MostValueableProduct[]
     */
    public QueryResult.MostValueableProduct[] getMostValueableProducts() {
        List<QueryResult.MostValueableProduct> mvps = new ArrayList<>();

        String selectQuery1 = "WITH Profits AS " +
                        "(SELECT f.factoryId, pt.productId, pt.productName, pt.productType, (s.amount * s.pricePerUnit - p.amount * p.productionCost) AS profit " +
                        "FROM Factory f, Product pt, Shipment s, Produce p " +
                        "WHERE f.factoryId = p.factoryId AND p.factoryId = s.factoryId AND pt.productId = p.productId AND s.productId = pt.productId " +
                        "UNION " +
                        "SELECT f.factoryId, pt.productId, pt.productName, pt.productType, (- p.amount * p.productionCost) AS profit " +
                        "FROM Factory f, Product pt, Produce p " +
                        "WHERE f.factoryId = p.factoryId AND pt.productId = p.productId AND NOT EXISTS (SELECT 1 FROM Shipment s WHERE s.factoryId = f.factoryId AND s.productId = pt.productId)" +
                        "UNION " +
                        "SELECT f.factoryId, pt.productId, pt.productName, pt.productType, (s.amount * s.pricePerUnit) AS profit " +
                        "FROM Factory f, Product pt, Shipment s " +
                        "WHERE f.factoryId = s.factoryId AND pt.productId = s.productId AND NOT EXISTS (SELECT 1 FROM Produce p WHERE p.factoryId = f.factoryId AND p.productId = pt.productId) )" +
                "SELECT * " +
                "FROM Profits " +
                "WHERE NOT EXISTS (SELECT 1 FROM Profits ps WHERE ps.factoryId = Profits.factoryId AND ps.profit > Profits.profit) " +
                "ORDER BY profit DESC, factoryId ASC;";

        String selectQuery = "WITH Profits AS " +
                "(SELECT f.factoryId, pt.productId, pt.productName, pt.productType, (s.amount * s.pricePerUnit - p.amount * p.productionCost) AS profit " +
                "FROM Factory f, Product pt, Shipment s, Produce p " +
                "WHERE f.factoryId = p.factoryId AND p.factoryId = s.factoryId AND pt.productId = p.productId AND s.productId = pt.productId " +
                "UNION " +
                "SELECT f.factoryId, pt.productId, pt.productName, pt.productType, (- p.amount * p.productionCost) AS profit " +
                "FROM Factory f, Product pt, Produce p " +
                "WHERE f.factoryId = p.factoryId AND pt.productId = p.productId AND NOT EXISTS (SELECT 1 FROM Shipment s WHERE s.factoryId = f.factoryId AND s.productId = pt.productId) ) " +

                "SELECT * " +
                "FROM Profits " +
                "WHERE NOT EXISTS (SELECT 1 FROM Profits ps WHERE ps.factoryId = Profits.factoryId AND ps.profit > Profits.profit) " +
                "ORDER BY profit DESC, factoryId ASC;";

        //String selectQuery = "SELECT DISTINCT p.factoryId FROM Shipment p ORDER BY p.factoryId ASC;";

        try (PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)) {
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    QueryResult.MostValueableProduct mvp = new QueryResult.MostValueableProduct(resultSet.getInt("factoryId"), resultSet.getInt("productId"), resultSet.getString("productName"),resultSet.getString("productType"), resultSet.getDouble("profit"));
                    //QueryResult.MostValueableProduct mvp = new QueryResult.MostValueableProduct(resultSet.getInt("factoryId"), 0, " ", " ", 0.0);

                    mvps.add(mvp);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return mvps.toArray(new QueryResult.MostValueableProduct[0]);
    }

    /**
     * For each product, return the factories that gather the highest profit
     * for that product
     *
     * @return QueryResult.MostValueableProduct[]
     */
    public QueryResult.MostValueableProduct[] getMostValueableProductsOnFactory() {
        List<QueryResult.MostValueableProduct> mvps = new ArrayList<>();

        String selectQuery = "(SELECT P.factoryId, P.productId, pt.productName, pt.productType, (S.amount * S.pricePerUnit - P.amount * P.productionCost) AS profit " +
                "FROM Produce P, Shipment S, Product pt " +
                "WHERE P.factoryId = S.factoryId AND S.productId = P.productId AND pt.productId = P.productId AND NOT EXISTS ( " +
                "   SELECT 1 FROM Shipment S2, Produce P2 WHERE S2.factoryId = P2.factoryId AND S2.productId = P.productId AND P2.productId = P.productId AND " +
                " (S2.amount * S2.pricePerUnit - P2.amount * P2.productionCost) > (S.amount * S.pricePerUnit - P.amount * P.productionCost)" +
                ") )" +
                "UNION " +
                "(SELECT P.factoryId, P.productId, pt.productName, pt.productType, (- P.amount * P.productionCost) AS profit " +
                "FROM Produce P, Product pt " +
                "WHERE P.productId = pt.productId AND NOT EXISTS ( SELECT 1 FROM Shipment S WHERE S.productId = pt.productId) AND NOT EXISTS (" +
                "   SELECT 1 FROM Produce P2 WHERE P2.productId = P.productId AND " +
                " (- P2.amount * P2.productionCost) > ( - P.amount * P.productionCost)" +
                ") ) " +
                "ORDER BY profit DESC, productId ASC;";

        try (PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)) {
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    QueryResult.MostValueableProduct mvp = new QueryResult.MostValueableProduct(resultSet.getInt("factoryId"), resultSet.getInt("productId"), resultSet.getString("productName"),resultSet.getString("productType"), resultSet.getDouble("profit"));
                    mvps.add(mvp);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return mvps.toArray(new QueryResult.MostValueableProduct[0]);
    }


    /**
     * For each department, should return all employees that are paid under the
     *     average salary for that department. You consider the employees
     *     that do not work earning ”0”.
     *
     * @return QueryResult.LowSalaryEmployees[]
     */
    public QueryResult.LowSalaryEmployees[] getLowSalaryEmployeesForDepartments() {
        List<QueryResult.LowSalaryEmployees> lses = new ArrayList<>();

        String selectQuery = "SELECT e2.employeeId, e2.employeeName, e2.department, e2.salary " +
                "FROM (" +
                "   SELECT E.department, AVG(CASE " +
                "                           WHEN EXISTS (SELECT 1 FROM Works_In w WHERE w.employeeId = E.employeeId ) THEN E.salary " +
                "                           ELSE 0 " +
                "                           END) AS avgsalary " +
                "   FROM Employee E " +
                "   GROUP BY E.department " +
                ") AS Avgs, Employee e2 " +
                "WHERE e2.department = Avgs.department AND CASE WHEN EXISTS (SELECT 1 FROM Works_In w WHERE w.employeeId = e2.employeeId) THEN e2.salary ELSE 0 END < Avgs.avgsalary " +
                "ORDER BY e2.employeeId ASC;";

        try (PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)) {
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    QueryResult.LowSalaryEmployees lse = new QueryResult.LowSalaryEmployees(resultSet.getInt("employeeId"), resultSet.getString("employeeName"), resultSet.getString("department"), resultSet.getInt("salary"));
                    lses.add(lse);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lses.toArray(new QueryResult.LowSalaryEmployees[0]);
    }


    /**
     * For the products of given productType, increase the productionCost of every unit by a given percentage.
     *
     * @return number of rows affected
     */
    public int increaseCost(String productType, double percentage) {
        int rowsAffected = 0;

        double factor = 1 + (percentage / 100);

        String updateQuery = "UPDATE Produce SET productionCost = productionCost * ? WHERE productId IN " +
                "(SELECT productId FROM Product WHERE productType = ?);";

        try (PreparedStatement preparedStatement = connection.prepareStatement(updateQuery)) {
            preparedStatement.setDouble(1, factor);
            preparedStatement.setString(2, productType);

            // Execute the update query and get the number of rows affected
            rowsAffected = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rowsAffected;
    }


    /**
     * Deleting all employees that have not worked since the given date.
     *
     * @return number of rows affected
     */
    public int deleteNotWorkingEmployees(String givenDate) {
        int rowsAffected = 0;

        // Assuming you have a valid Connection object in the class

        String deleteQuery = "DELETE FROM Employee WHERE NOT EXISTS " +
                "(SELECT 1 FROM Works_In w WHERE Employee.employeeId = w.employeeId AND w.startDate >= ?);";

        try (PreparedStatement preparedStatement = connection.prepareStatement(deleteQuery)) {
            preparedStatement.setString(1, givenDate);

            // Execute the delete query and get the number of rows affected
            rowsAffected = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rowsAffected;
    }


    /**
     * *****************************************************
     * *****************************************************
     * *****************************************************
     * *****************************************************
     *  THE METHODS AFTER THIS LINE WILL NOT BE GRADED.
     *  YOU DON'T HAVE TO SOLVE THEM, LEAVE THEM AS IS IF YOU WANT.
     *  IF YOU HAVE ANY QUESTIONS, REACH ME VIA EMAIL.
     * *****************************************************
     * *****************************************************
     * *****************************************************
     * *****************************************************
     */

    /**
     * For each department, find the rank of the employees in terms of
     * salary. Peers are considered tied and receive the same rank. After
     * that, there should be a gap.
     *
     * @return QueryResult.EmployeeRank[]
     */
    public QueryResult.EmployeeRank[] calculateRank() {
        return new QueryResult.EmployeeRank[0];
    }

    /**
     * For each department, find the rank of the employees in terms of
     * salary. Everything is the same but after ties, there should be no
     * gap.
     *
     * @return QueryResult.EmployeeRank[]
     */
    public QueryResult.EmployeeRank[] calculateRank2() {
        return new QueryResult.EmployeeRank[0];
    }

    /**
     * For each factory, calculate the most profitable 4th product.
     *
     * @return QueryResult.FactoryProfit
     */
    public QueryResult.FactoryProfit calculateFourth() {
        return new QueryResult.FactoryProfit(0,0,0);
    }

    /**
     * Determine the salary variance between an employee and another
     * one who began working immediately after the first employee (by
     * startDate), for all employees.
     *
     * @return QueryResult.SalaryVariant[]
     */
    public QueryResult.SalaryVariant[] calculateVariance() {
        return new QueryResult.SalaryVariant[0];
    }

    /**
     * Create a method that is called once and whenever a Product starts
     * losing money, deletes it from Produce table
     *
     * @return void
     */
    public void deleteLosing() {

    }
}
