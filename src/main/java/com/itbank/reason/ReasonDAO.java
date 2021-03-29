package com.itbank.reason;

import java.util.List;

public interface ReasonDAO {

	void insertReason(String reason);

	List<ReasonDTO> selectReasonAll();
	
	
}
