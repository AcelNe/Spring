package hb.model;

import java.util.Date;

import lombok.Data;

@Data
public class BoardDTO {
	int num, views;
	String cate, title, writer;
	Date date;
	String contents;
}
