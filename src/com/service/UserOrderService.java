package com.service;

import java.util.List;

import com.model.UserOrder;

public interface UserOrderService {
   List<UserOrder> selectAll();
   
   List<UserOrder> selectBySearch(UserOrder userOrder);
   
}
