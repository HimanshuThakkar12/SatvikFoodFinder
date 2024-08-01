package com.satvikfoodfinder.dao;
import org.springframework.data.jpa.repository.JpaRepository;

import com.satvikfoodfinder.entity.CommentVO;


public interface CommentDAO extends JpaRepository<CommentVO, Integer> {

	

}
