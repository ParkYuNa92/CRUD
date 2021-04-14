package com.green.mapper;

import java.util.List;

import com.green.vo.ScoreVO;

public interface ScoreMapper {
	public List<ScoreVO> getAll();
	public ScoreVO get(Long sno);
	public void insertScore(ScoreVO vo);
	public void updateScore(ScoreVO vo);
	public void deleteScore(Long sno);
	public void insertKeyScore(ScoreVO vo);

}
