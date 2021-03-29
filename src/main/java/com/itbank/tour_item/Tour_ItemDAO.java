package com.itbank.tour_item;

import java.util.HashMap;
import java.util.List;

public interface Tour_ItemDAO {
	
	int selectCount(HashMap<String, Object> map);

	List<Tour_ItemDTO> selectList(HashMap<String, Object> map);

	Tour_ItemDTO selectOne(int idx);

	int inputTour_Item(Tour_ItemDTO user);

	int selectMaxIdx();
	
}