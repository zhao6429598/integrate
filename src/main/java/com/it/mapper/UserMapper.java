package com.it.mapper;

import com.it.bean.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {

    /**
     * 根据id查询User
     * @param id
     * @return
     */
    User finduser(@Param("id")int id);

}
