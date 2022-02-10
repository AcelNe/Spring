package hb.model;

import java.util.Date;

import lombok.Data;

@Data
public class BoardDTO {
	int no, views;
	String cate, title, writer;
	Date date;
}
