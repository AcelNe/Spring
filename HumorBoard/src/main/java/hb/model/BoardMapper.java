package hb.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {
	List<BoardDTO> boardList(BoardDTO dto);
}
