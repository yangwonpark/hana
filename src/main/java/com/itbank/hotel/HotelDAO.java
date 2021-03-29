package com.itbank.hotel;

import java.util.List;



public interface HotelDAO {

	List<HotelDTO> getHotelList();

	HotelDTO getHotel(int hotel_idx);

	String getHotelKind(int hotel_kind_idx);

}
