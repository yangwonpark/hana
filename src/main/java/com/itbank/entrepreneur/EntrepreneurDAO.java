package com.itbank.entrepreneur;

import java.util.HashMap;
import java.util.List;

public interface EntrepreneurDAO {

	List<EntrepreneurDTO> getEntrepreneurList(HashMap<String, String> map);

	EntrepreneurDTO getEntrepreneur(int entrepreneur_idx);

	List<EntrepreneurDTO> getEntrepreneurAll();

}
