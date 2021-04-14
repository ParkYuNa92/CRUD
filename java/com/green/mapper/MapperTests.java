package com.green.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.green.vo.ScoreVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MapperTests {
	@Setter(onMethod_=@Autowired)
	ScoreMapper mapper;
	
	//@Test
	public void testList() {
		mapper.getAll();
	}
	//@Test
	public void testGet() {
		mapper.get(2L);
	}
	//@Test
	public void testInsert() {
		ScoreVO score = new ScoreVO();
		
		score.setSname("김개똥");
		score.setSpassword("1234");
		score.setKorea(80);
		score.setMath(70);
		score.setEng(50);
		score.setTotal(score.getKorea()+score.getMath()+score.getEng());
		score.setAvg(score.getTotal()/3);
		
		mapper.insertScore(score);
	}
	@Test
	public void testUpdate() {
		ScoreVO score = new ScoreVO();
		
		score.setSname("강아지");
		score.setKorea(100);
		score.setMath(100);
		score.setEng(100);
		score.setTotal(score.getKorea()+score.getMath()+score.getEng());
		score.setAvg(score.getTotal()/3);
		score.setSno(1);
		mapper.updateScore(score);
	}
	//@Test
	public void testDelete() {
		mapper.deleteScore(2L);
	}
	

}
