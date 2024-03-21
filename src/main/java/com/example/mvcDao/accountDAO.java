package com.example.mvcDao;

import com.example.mvcVo.userVo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import static com.example.mvcDB.mariaDb.close;

public class accountDAO {
    private static accountDAO loginDAO;
    private Connection con;

    private accountDAO() {

    }

    public static accountDAO getInstance() {
        if (loginDAO == null) {
            loginDAO = new accountDAO();
        }
        return loginDAO;
    }

    public void setConnection(Connection con) {
        this.con = con;
    }

    public userVo selectLoginMember(String id, String passwd) {
        userVo loginMember = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            pstmt = con.prepareStatement("SELECT * FROM users WHERE id=? AND passwd=?");
            pstmt.setString(1, id);
            pstmt.setString(2, passwd);

            rs = pstmt.executeQuery();
            if (rs.next()) {
                loginMember = new userVo();
                loginMember.setId(rs.getString("id"));
                loginMember.setPasswd(rs.getString("passwd"));
                loginMember.setAge(rs.getInt("age"));
                loginMember.setEmail(rs.getString("email"));
                loginMember.setGender(rs.getString("gender"));
                loginMember.setName(rs.getString("name"));
                loginMember.setNation(rs.getString("nation"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                close(rs);
                close(pstmt);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return loginMember;
    }
}