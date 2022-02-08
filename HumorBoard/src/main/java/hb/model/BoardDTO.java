package hb.model;

import java.util.Date;

import lombok.Data;

@Data
public class BoardDTO {
	int no, view;
	String title, writer;
	Date date;
}
