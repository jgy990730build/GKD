package src.com.bean;

public class UserServiceImpl implements UserService {
	UserDao userDao = new UserDaoImpl();
	/**
     * judgeLogin:登录判断 .<br/>
     */
	@Override
    public int judgeLogin(String Account,String Password) {
        int k = 0;//k值用于Servlet决定跳转页面
        User user = userDao.selectByName(Account);
        
		System.out.println(user.getPassword());
        //
        if(!Password.equals(user.getPassword())) {
            k = 0;
        }else {
            k = 1;
        }
        return k;
    }
}
