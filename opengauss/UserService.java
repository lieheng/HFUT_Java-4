package Code;

import java.sql.*;

public class UserService {
    Connection connection = null;
    Statement statement = null;
    public UserService() {
        try {
            Class.forName("org.opengauss.Driver");
            String name = "gaussdb";
            String password = "Password@123"; // 这里要和设置的密码一致，密码必须包含大小写字母，特殊字符及数字。
            String url = "jdbc:postgresql://127.0.0.1:5432/data";
            connection = DriverManager.getConnection(url, name, password);// 建立连接到数据库的连接
            statement = connection.createStatement();// 创建一个Statement对象，用于将SQL语句发送到数据库。
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public boolean register(User user) {// 注册模块
        try{
            String sql = "INSERT INTO userTest (username, password, sex) VALUES ('"
                    +user.getUsername()+"', '"
                    +user.getPassword()+"', '"
                    +user.getSex()+"');";// sql语句
            if (statement.executeUpdate(sql)>=1)
                // executeUpdate()方法会返回受影响的行数，
                // 由于username的唯一性，所以直接尝试将用户信息插入数据库，无需判断用户名是否已经存在。
                return true;
            else
                return false;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    public boolean login(User user) {// 登录模块
        try {
            String sql = "SELECT username, password FROM userTest WHERE username = '"+user.getUsername()+"';";// sql语句
            ResultSet resultSet = statement.executeQuery(sql);// 查询结果
            if (resultSet.next()// 如果查询到了该用户名
                    && user.getPassword().equals(resultSet.getString("password"))) {//并且密码与数据库中一致
                resultSet.close();
                return true;
            }else {
                resultSet.close();
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
