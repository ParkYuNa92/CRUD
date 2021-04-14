package com.green.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.mapper.ScoreMapper;
import com.green.vo.ScoreVO;

import lombok.Setter;

@Service
public class ScoreServiceImpl implements ScoreService{
	
	@Setter(onMethod_=@Autowired)
	ScoreMapper mapper;
	@Override
	public List<ScoreVO> list() {
		
		return mapper.getAll();
	}

	@Override
	public ScoreVO read(Long sno) {
		// TODO Auto-generated method stub
		return mapper.get(sno);
	}

	@Override
	public void update(ScoreVO vo) {
		mapper.updateScore(vo);
		
	}

	@Override
	public void delete(Long sno) {
		mapper.deleteScore(sno);
		
	}

	@Override
	public void insert(ScoreVO vo) {
		mapper.insertKeyScore(vo);
		
	}

}
