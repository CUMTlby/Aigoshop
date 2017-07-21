package org.fkit.service;

import java.util.List;

import org.fkit.domain.Shop;

public interface ShopService {
	List<Shop> getAll();
	Shop findShop(int book_id);
	Shop saveShop(int book_id);
	Shop addShop(int book_id);
	Shop increaseShop(int book_id);
	Shop reduceShop(int book_id);
	Shop removeShop(int book_id);
}

