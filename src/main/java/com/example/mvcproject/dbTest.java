package com.example.mvcproject;

import java.sql.*;
import java.lang.*;
import java.util.List;

public class dbTest {
    public static void main(String[] args) throws SQLException {
        String url = "jdbc:mysql://localhost:3306/test101";
        String userName = "root";
        String password = "1234";

        Connection connection = DriverManager.getConnection(url, userName, password);
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("select * from users");

        resultSet.next();
        String name = resultSet.getString("name");
        System.out.println(name);

        resultSet.close();
        statement.close();
        connection.close();
    }

/*
    static final String JDBC_DRIVER = "org.mariadb.jdbc.Driver";
    static final String JDBC_URL = "jdbc:mariadb://localhost:3306/test101";
    static final String USER = "root";
    static final String PASSWORD = "1234";

    public static void main(String[] args) {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            System.out.println(JDBC_DRIVER);
            Class.forName(JDBC_DRIVER);
            System.out.println("JDBC 드라이버 로드 성공");

            con = DriverManager.getConnection(JDBC_URL, USER, PASSWORD);
            System.out.println("데이터베이스 연결 성공");
            stmt = con.createStatement();

            String selectSQL = "SELECT * FROM member";
            rs = stmt.executeQuery(selectSQL);
//            System.out.println(selectSQL);
            while(rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int age = rs.getInt("age");
                String addr = rs.getString("addr");

                System.out.print("id : " + id + ", ");
                System.out.print("name : " + name + ", ");
                System.out.print("age : " + age + ", ");
                System.out.println("addr : " + addr);
            }

            stmt.close();
            con.close();

        } catch (SQLException se) {
            se.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }

    }
*/
}
