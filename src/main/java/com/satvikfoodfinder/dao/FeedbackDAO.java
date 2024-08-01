package com.satvikfoodfinder.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.satvikfoodfinder.entity.FeedbackVO;

public interface FeedbackDAO extends JpaRepository<FeedbackVO, Integer> {

}
