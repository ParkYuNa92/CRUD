package com.green.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ScoreVO {
	
    int sno ;
    String sname;
    String spassword;
    int korea, math, eng, total; 
    float avg;
}
