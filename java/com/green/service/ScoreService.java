package com.green.service;

import java.util.List;

import com.green.vo.ScoreVO;

public interface ScoreService {
	public List<ScoreVO> list();
	public ScoreVO read(Long sno);
	public void update(ScoreVO vo);
	public void delete(Long sno);
	public void insert(ScoreVO vo);

}
