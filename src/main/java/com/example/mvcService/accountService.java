package com.example.mvcService;

import com.example.mvcDao.accountDAO;
import com.example.mvcVo.userVo;
import org.springframework.stereotype.Service;

import java.sql.Connection;

import static com.example.mvcDB.mariaDb.close;
import static com.example.mvcDB.mariaDb.getConnection;

//@Service("accountService")
public class accountService {
    public userVo getLoginMember(String id, String passwd){
        accountDAO loginDAO =accountDAO.getInstance();
        Connection con = getConnection();
        loginDAO.setConnection(con);
        userVo loginMember = loginDAO.selectLoginMember(id,passwd);
        close(con);
        return loginMember;
    }

}
