package com.satvikfoodfinder.service;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.satvikfoodfinder.dao.ComplainDAO;
import com.satvikfoodfinder.entity.ComplainVO;

@Service
@Transactional
public class ComplainServiceImpl implements ComplainService {

	@Autowired
	ComplainDAO complainDAO;
	
	@Override
	public List<ComplainVO> findAllByLoginVO(int id) {
		System.out.println("Login user id is : " + id);
		List<ComplainVO> AllComplainList = complainDAO.findAll();
		
		List<ComplainVO> complainList = new LinkedList<>();
		
		for (Iterator iterator = AllComplainList.iterator(); iterator.hasNext();) {
			ComplainVO complainVO = (ComplainVO) iterator.next();
			
			if (complainVO.getLoginVO().getUserID() == id) {
				complainList.add(complainVO);
			}
			
		}
		
		System.out.println("$$$$$$$$$$$$$$$ Login user complain List is: " + complainList + " $$$$$$$$$$$$$$$$$$");
		
		return complainList;
	}

	@Override
	public List<ComplainVO> findAllComplains() {
		
		return complainDAO.findAll();
	}

	@Override
	public ComplainVO findById(int id) {
		// TODO Auto-generated method stub
		return complainDAO.findById(id).get();
	}

	@Override
	public void save(ComplainVO complainVO) {
		// TODO Auto-generated method stub
		complainDAO.save(complainVO);
	}

	@Override
	public void deleteCompalian(int id) {
		// TODO Auto-generated method stub
		complainDAO.deleteById(id);
	}

	
}
