package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Asset;
import model.Customer;
import model.Salary;
import model.User;

public class UserDAO extends DBContext {

    public User checkAuthen(String username, String password) {
        String sql = "SELECT * FROM [User] WHERE Username=? AND Password=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User userToAdd = new User(rs.getInt("UserID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("FullName"),
                        rs.getString("Phone"),
                        rs.getString("Email"),
                        rs.getDate("DateOfBirth"),
                        rs.getBoolean("Gender"),
                        rs.getString("CCCD"),
                        rs.getInt("RoleID"),
                        rs.getBoolean("Status"),
                        rs.getDate("CreatedAt"));
                return userToAdd;
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public List<User> selectAllUser() {
        List<User> userList = new ArrayList<>();
        String sql = "SELECT * FROM [User]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User userToAdd = new User(rs.getInt("UserID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("FullName"),
                        rs.getString("Phone"),
                        rs.getString("Email"),
                        rs.getDate("DateOfBirth"),
                        rs.getBoolean("Gender"),
                        rs.getString("CCCD"),
                        rs.getInt("RoleID"),
                        rs.getBoolean("Status"),
                        rs.getDate("CreatedAt"));
                userList.add(userToAdd);
            }
        } catch (SQLException e) {
        }
        return userList;
    }

    public List<User> selectAllManager() {
        List<User> managerList = new ArrayList<>();
        String sql = "SELECT * FROM [User] WHERE RoleID=3";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User userToAdd = new User(rs.getInt("UserID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("FullName"),
                        rs.getString("Phone"),
                        rs.getString("Email"),
                        rs.getDate("DateOfBirth"),
                        rs.getBoolean("Gender"),
                        rs.getString("CCCD"),
                        rs.getInt("RoleID"),
                        rs.getBoolean("Status"),
                        rs.getDate("CreatedAt"));
                managerList.add(userToAdd);
            }
        } catch (SQLException e) {
        }
        return managerList;
    }

    public List<User> selectAllSeller() {
        List<User> userList = new ArrayList<>();
        String sql = "SELECT * FROM [User] WHERE RoleID=2";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User userToAdd = new User(rs.getInt("UserID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("FullName"),
                        rs.getString("Phone"),
                        rs.getString("Email"),
                        rs.getDate("DateOfBirth"),
                        rs.getBoolean("Gender"),
                        rs.getString("CCCD"),
                        rs.getInt("RoleID"),
                        rs.getBoolean("Status"),
                        rs.getDate("CreatedAt"));
                userList.add(userToAdd);
            }
        } catch (SQLException e) {
        }
        return userList;
    }

    public void addAUser(User userToAdd) {
        String sql = "INSERT INTO [User](Username, Password, FullName, Phone, Email, DateOfBirth, Gender, CCCD, RoleID, Status)\n"
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, userToAdd.getUsername());
            st.setString(2, userToAdd.getPassword());
            st.setString(3, userToAdd.getName());
            st.setString(4, userToAdd.getPhone());
            st.setString(5, userToAdd.getEmail());
            st.setDate(6, userToAdd.getDob());
            st.setBoolean(7, userToAdd.isGender());
            st.setString(8, userToAdd.getCccd());
            st.setInt(9, userToAdd.getRoleID());
            st.setInt(10, 1);
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void updateAUserByUserID(User userToUpdate) {
        String sql = "UPDATE [User] SET Password=?, FullName=?, Phone=?, Email=?, DateOfBirth=?, Gender=?, CCCD=?, RoleID=?, Status=? WHERE UserID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, userToUpdate.getPassword());
            st.setString(2, userToUpdate.getName());
            st.setString(3, userToUpdate.getPhone());
            st.setString(4, userToUpdate.getEmail());
            st.setDate(5, userToUpdate.getDob());
            st.setBoolean(6, userToUpdate.isGender());
            st.setString(7, userToUpdate.getCccd());
            st.setInt(8, userToUpdate.getRoleID());
            st.setBoolean(9, userToUpdate.isStatus());
            st.setInt(10, userToUpdate.getUserID());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public User checkUserByEmail(String email) {
        String sql = "SELECT * FROM [User] WHERE Email = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User userToAdd = new User(rs.getInt("UserID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("FullName"),
                        rs.getString("Phone"),
                        rs.getString("Email"),
                        rs.getDate("DateOfBirth"),
                        rs.getBoolean("Gender"),
                        rs.getString("CCCD"),
                        rs.getInt("RoleID"),
                        rs.getBoolean("Status"),
                        rs.getDate("CreatedAt"));
                return userToAdd;
            }
        } catch (SQLException e) {
        }

        return null;
    }

    public List<Asset> selectAllAssets() {
        List<Asset> assets = new ArrayList<>();

        try {

            String sql = "SELECT  * FROM Asset";
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet resultSet = st.executeQuery();

            while (resultSet.next()) {
                Asset asset = new Asset();
                asset.setId(resultSet.getInt("AssetId"));
                asset.setCustomerId(resultSet.getInt("CustomerId"));
                asset.setImage(resultSet.getString("Image"));
                asset.setDescription(resultSet.getString("Description"));
                asset.setValue(resultSet.getBigDecimal("Value"));
                asset.setVerification(resultSet.getBoolean("Verification"));
                asset.setStatus(resultSet.getBoolean("Status"));
                asset.setCreatedAt(resultSet.getTimestamp("CreatedAt"));
                assets.add(asset);
            }
            return assets;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public List<Salary> selectAllSalary() {
        List<Salary> salarys = new ArrayList<>();
        try {

            String sql = "SELECT  * FROM Salary";
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet resultSet = st.executeQuery();

            while (resultSet.next()) {
                Salary salary = new Salary();
                salary.setId(resultSet.getInt("SalaryId"));
                salary.setCustomerId(resultSet.getInt("CustomerId"));
                salary.setImage(resultSet.getString("Image"));
                salary.setDescription(resultSet.getString("Description"));
                salary.setValue(resultSet.getBigDecimal("Value"));
                salary.setVerification(resultSet.getBoolean("Verification"));
                salary.setStatus(resultSet.getBoolean("Status"));
                salary.setCreatedAt(resultSet.getTimestamp("CreatedAt"));
                salarys.add(salary);
            }
            return salarys;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Customer getUserbyCid(int customerID) {

        try {
            String sql = "Select *\n"
                    + "from Customer c \n"
                    + "join [User] u on u.UserID = c.UserID\n"
                    + "where c.CustomerId =?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, customerID);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Customer customer = new Customer();
                customer.setCustomerid(rs.getInt("CustomerId"));
                customer.setCreditscore(rs.getInt("CreditScore"));
                customer.setBalance(rs.getBigDecimal("Balance"));
                User user = new User(rs.getInt("UserID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("FullName"),
                        rs.getString("Phone"),
                        rs.getString("Email"),
                        rs.getDate("DateOfBirth"),
                        rs.getBoolean("Gender"),
                        rs.getString("CCCD"),
                        rs.getInt("RoleID"),
                        rs.getBoolean("Status"),
                        rs.getDate("CreatedAt"));
                customer.setUser(user);
                return customer;
            }
        } catch (Exception e) {
        }

        return null;
    }

    public boolean updateAsset(Asset asset) {
        String sql = "UPDATE Asset SET CustomerId = ?, Image = ?, Description = ?, "
                + "Value = ?, Verification = ?, Status = ?, CreatedAt = ? WHERE AssetId = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setInt(1, asset.getCustomerId());
            preparedStatement.setString(2, asset.getImage());
            preparedStatement.setString(3, asset.getDescription());
            preparedStatement.setBigDecimal(4, asset.getValue());
            preparedStatement.setBoolean(5, asset.isVerification());
            preparedStatement.setBoolean(6, asset.isStatus());
            preparedStatement.setTimestamp(7, new java.sql.Timestamp(asset.getCreatedAt().getTime()));
            preparedStatement.setInt(8, asset.getId());

            int rowsUpdated = preparedStatement.executeUpdate();
            return rowsUpdated > 0; // Trả về true nếu có ít nhất một hàng được cập nhật
        } catch (SQLException e) {
            e.printStackTrace();
            return false; // Trả về false nếu có lỗi xảy ra
        }
    }

    public boolean updateSalary(Salary salary) {
        String sql = "UPDATE Salary SET CustomerId = ?, Image = ?, Description = ?, "
                + "Value = ?, Verification = ?, Status = ?, CreatedAt = ? WHERE SalaryId = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setInt(1, salary.getCustomerId());
            preparedStatement.setString(2, salary.getImage());
            preparedStatement.setString(3, salary.getDescription());
            preparedStatement.setBigDecimal(4, salary.getValue());
            preparedStatement.setBoolean(5, salary.isVerification());
            preparedStatement.setBoolean(6, salary.isStatus());
            preparedStatement.setTimestamp(7, new java.sql.Timestamp(salary.getCreatedAt().getTime()));
            preparedStatement.setInt(8, salary.getId());

            int rowsUpdated = preparedStatement.executeUpdate();
            return rowsUpdated > 0; // Trả về true nếu có ít nhất một hàng được cập nhật
        } catch (SQLException e) {
            e.printStackTrace();
            return false; // Trả về false nếu có lỗi xảy ra
        }
    }

    public Asset getAssetById(int assetId) {

        String sql = "SELECT * FROM Asset WHERE AssetId = ?";

        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setInt(1, assetId);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                Asset asset = new Asset();
                asset.setId(resultSet.getInt("AssetId"));
                asset.setCustomerId(resultSet.getInt("CustomerId"));
                asset.setImage(resultSet.getString("Image"));
                asset.setDescription(resultSet.getString("Description"));
                asset.setValue(resultSet.getBigDecimal("Value"));
                asset.setVerification(resultSet.getBoolean("Verification"));
                asset.setStatus(resultSet.getBoolean("Status"));
                asset.setCreatedAt(resultSet.getTimestamp("CreatedAt"));
                return asset;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public Salary getSalaryById(int id) {

        String sql = "SELECT * FROM Salary WHERE SalaryId = ?";

        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                Salary salary = new Salary();
                salary.setId(resultSet.getInt("SalaryId"));
                salary.setCustomerId(resultSet.getInt("CustomerId"));
                salary.setImage(resultSet.getString("Image"));
                salary.setDescription(resultSet.getString("Description"));
                salary.setValue(resultSet.getBigDecimal("Value"));
                salary.setVerification(resultSet.getBoolean("Verification"));
                salary.setStatus(resultSet.getBoolean("Status"));
                salary.setCreatedAt(resultSet.getTimestamp("CreatedAt"));
                return salary;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public List<Asset> getAssetsSortedByValue(String ascending) throws SQLException {
        List<Asset> assets = new ArrayList<>();
        String query = "SELECT * FROM Asset ORDER BY Value " + ascending;

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Asset asset = new Asset();
                asset.setId(rs.getInt("AssetId"));
                asset.setCustomerId(rs.getInt("CustomerId"));
                asset.setImage(rs.getString("Image"));
                asset.setDescription(rs.getString("Description"));
                asset.setValue(rs.getBigDecimal("Value"));
                asset.setVerification(rs.getBoolean("Verification"));
                asset.setStatus(rs.getBoolean("Status"));
                asset.setCreatedAt(rs.getTimestamp("CreatedAt"));
                assets.add(asset);
            }
            return assets;
        } catch (SQLException e) {
            e.printStackTrace();

        }
        return null;

    }

    public List<Asset> getAssetsSortedByDate(String ascending) throws SQLException {
        List<Asset> assets = new ArrayList<>();
        String query = "SELECT * FROM Asset ORDER BY CreatedAt " + ascending;

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Asset asset = new Asset();
                asset.setId(rs.getInt("AssetId"));
                asset.setCustomerId(rs.getInt("CustomerId"));
                asset.setImage(rs.getString("Image"));
                asset.setDescription(rs.getString("Description"));
                asset.setValue(rs.getBigDecimal("Value"));
                asset.setVerification(rs.getBoolean("Verification"));
                asset.setStatus(rs.getBoolean("Status"));
                asset.setCreatedAt(rs.getTimestamp("CreatedAt"));
                assets.add(asset);
            }
            return assets;
        } catch (SQLException e) {
            e.printStackTrace();

        }
        return null;

    }

    public List<Salary> getSalarySortedByDate(String ascending) throws SQLException {
        List<Salary> salarys = new ArrayList<>();
        String query = "SELECT * FROM Salary ORDER BY CreatedAt " + ascending;

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Salary salary = new Salary();
                salary.setId(resultSet.getInt("SalaryId"));
                salary.setCustomerId(resultSet.getInt("CustomerId"));
                salary.setImage(resultSet.getString("Image"));
                salary.setDescription(resultSet.getString("Description"));
                salary.setValue(resultSet.getBigDecimal("Value"));
                salary.setVerification(resultSet.getBoolean("Verification"));
                salary.setStatus(resultSet.getBoolean("Status"));
                salary.setCreatedAt(resultSet.getTimestamp("CreatedAt"));
                salarys.add(salary);
            }
            return salarys;
        } catch (SQLException e) {
            e.printStackTrace();

        }
        return null;

    }

    public List<Asset> getAssetsByStatus(boolean status) throws SQLException {
        List<Asset> assets = new ArrayList<>();
        String query = "SELECT * FROM Asset WHERE Status = ?";

        try {
            PreparedStatement pstmt = connection.prepareStatement(query);
            pstmt.setBoolean(1, status);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Asset asset = new Asset();
                asset.setId(rs.getInt("AssetId"));
                asset.setCustomerId(rs.getInt("CustomerId"));
                asset.setImage(rs.getString("Image"));
                asset.setDescription(rs.getString("Description"));
                asset.setValue(rs.getBigDecimal("Value"));
                asset.setVerification(rs.getBoolean("Verification"));
                asset.setStatus(rs.getBoolean("Status"));
                asset.setCreatedAt(rs.getTimestamp("CreatedAt"));
                assets.add(asset);
            }
            return assets;
        } catch (SQLException e) {
            e.printStackTrace();

        }
        return null;

    }

    public List<Salary> getSalaryByStatus(boolean status) throws SQLException {
        List<Salary> salarys = new ArrayList<>();
        String query = "SELECT * FROM Salary WHERE Status = ?";

        try {
            PreparedStatement pstmt = connection.prepareStatement(query);
            pstmt.setBoolean(1, status);
            ResultSet resultSet = pstmt.executeQuery();
            while (resultSet.next()) {
                Salary salary = new Salary();
                salary.setId(resultSet.getInt("SalaryId"));
                salary.setCustomerId(resultSet.getInt("CustomerId"));
                salary.setImage(resultSet.getString("Image"));
                salary.setDescription(resultSet.getString("Description"));
                salary.setValue(resultSet.getBigDecimal("Value"));
                salary.setVerification(resultSet.getBoolean("Verification"));
                salary.setStatus(resultSet.getBoolean("Status"));
                salary.setCreatedAt(resultSet.getTimestamp("CreatedAt"));
                salarys.add(salary);
            }
            return salarys;
        } catch (SQLException e) {
            e.printStackTrace();

        }
        return null;

    }

    public List<Asset> getAssetsByVerify(boolean status) throws SQLException {
        List<Asset> assets = new ArrayList<>();
        String query = "SELECT * FROM Asset WHERE Verification = ?";

        try {
            PreparedStatement pstmt = connection.prepareStatement(query);
            pstmt.setBoolean(1, status);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Asset asset = new Asset();
                asset.setId(rs.getInt("AssetId"));
                asset.setCustomerId(rs.getInt("CustomerId"));
                asset.setImage(rs.getString("Image"));
                asset.setDescription(rs.getString("Description"));
                asset.setValue(rs.getBigDecimal("Value"));
                asset.setVerification(rs.getBoolean("Verification"));
                asset.setStatus(rs.getBoolean("Status"));
                asset.setCreatedAt(rs.getTimestamp("CreatedAt"));
                assets.add(asset);
            }
            return assets;
        } catch (SQLException e) {
            e.printStackTrace();

        }
        return null;

    }

    public List<Salary> getSalaryByVerify(boolean status) throws SQLException {
        List<Salary> salarys = new ArrayList<>();
        String query = "SELECT * FROM Salary WHERE Verification = ?";

        try {
            PreparedStatement pstmt = connection.prepareStatement(query);
            pstmt.setBoolean(1, status);
            ResultSet resultSet = pstmt.executeQuery();
            while (resultSet.next()) {
                Salary salary = new Salary();
                salary.setId(resultSet.getInt("SalaryId"));
                salary.setCustomerId(resultSet.getInt("CustomerId"));
                salary.setImage(resultSet.getString("Image"));
                salary.setDescription(resultSet.getString("Description"));
                salary.setValue(resultSet.getBigDecimal("Value"));
                salary.setVerification(resultSet.getBoolean("Verification"));
                salary.setStatus(resultSet.getBoolean("Status"));
                salary.setCreatedAt(resultSet.getTimestamp("CreatedAt"));
                salarys.add(salary);
            }
            return salarys;
        } catch (SQLException e) {
            e.printStackTrace();

        }
        return null;

    }

    public List<Asset> searchAssetsByDescription(String description) throws SQLException {
        List<Asset> assets = new ArrayList<>();
        String query = "SELECT * FROM Asset WHERE Description LIKE ?";

        try {
            PreparedStatement pstmt = connection.prepareStatement(query);
            pstmt.setString(1, "%" + description + "%");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Asset asset = new Asset();
                asset.setId(rs.getInt("AssetId"));
                asset.setCustomerId(rs.getInt("CustomerId"));
                asset.setImage(rs.getString("Image"));
                asset.setDescription(rs.getString("Description"));
                asset.setValue(rs.getBigDecimal("Value"));
                asset.setVerification(rs.getBoolean("Verification"));
                asset.setStatus(rs.getBoolean("Status"));
                asset.setCreatedAt(rs.getTimestamp("CreatedAt"));
                assets.add(asset);
            }
            return assets;
        } catch (SQLException e) {
            e.printStackTrace();

        }
        return null;

    }
     public List<Salary> searchSalaryByDescription(String description) throws SQLException {
        List<Salary> salarys = new ArrayList<>();
        String query = "SELECT * FROM Salary WHERE Description LIKE ?";

        try {
            PreparedStatement pstmt = connection.prepareStatement(query);
            pstmt.setString(1, "%" + description + "%");
            ResultSet resultSet = pstmt.executeQuery();
            while (resultSet.next()) {
               Salary salary = new Salary();
                salary.setId(resultSet.getInt("SalaryId"));
                salary.setCustomerId(resultSet.getInt("CustomerId"));
                salary.setImage(resultSet.getString("Image"));
                salary.setDescription(resultSet.getString("Description"));
                salary.setValue(resultSet.getBigDecimal("Value"));
                salary.setVerification(resultSet.getBoolean("Verification"));
                salary.setStatus(resultSet.getBoolean("Status"));
                salary.setCreatedAt(resultSet.getTimestamp("CreatedAt"));
                salarys.add(salary);
            }
            return salarys;
        } catch (SQLException e) {
            e.printStackTrace();

        }
        return null;

    }

    public static void main(String[] args) {
        UserDAO dao = new UserDAO();
//        Asset a = dao.getAssetById(2)
//        a.setVerification(true);
//        a.setStatus(true);
//        dao.updateAsset(a);
//        System.out.println(a.toString());

    }
}
