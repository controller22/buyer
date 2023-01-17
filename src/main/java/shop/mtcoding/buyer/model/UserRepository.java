package shop.mtcoding.buyer.model;

import org.apache.ibatis.annotations.Mapper;

/*
 * 회원가입, 로그인, 회원탈퇴, 회원수정
 */
@Mapper
public interface UserRepository {
    public int insert(String username, String password, String email);

    public User login(String username, String password);

    public int delete(int id);

    public int updatePassword(int id, String password);
}
