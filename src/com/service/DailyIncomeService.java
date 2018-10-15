package com.service;

import java.util.List;
import java.util.Map;

public interface DailyIncomeService {
    List<Map<String, Object>>  selectDailyIncome();
    
    List<Map<String, Object>>  selectAll();
    
    
}
