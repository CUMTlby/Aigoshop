package org.fkit.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.mapping.FetchType;
import org.fkit.domain.Shop;

public interface ShopMapper {
	@Select(" select * from tb_shop ")
	@Results({ @Result(id = true, column = "id", property = "id"),
		@Result(column = "book_id", property = "book", many = @Many(select = "org.fkit.mapper.BookMapper.selectByBookId", fetchType = FetchType.LAZY)),		
		@Result(column = "count", property = "count"), @Result(column = "book_id", property = "book_id")})
	List<Shop> findAll();
	
	  //加入购物车
    @Insert("insert into tb_shop(book_id,count) values(#{book_id},#{count})")
	@Options(useGeneratedKeys = true, keyProperty = "id")
	int saveShop(Shop shop);
    
     //通过ID寻找书
    @Select("select * from tb_shop where book_id=#{book_id}")
	@Results({ @Result(id = true, column = "id", property = "id"),
			@Result(column = "book_id", property = "book", many = @Many(select = "org.fkit.mapper.BookMapper.selectByBookId", fetchType = FetchType.LAZY)),				
			@Result(column = "count", property = "count"), @Result(column = "book_id", property = "book_id") })
	Shop findWithId(@Param("book_id") int book_id);
    
    //增加书籍数量
    @Update("update tb_shop set count=count+1 where book_id=#{book_id}")
	void addShop(Shop shop);
    
    //增加购物车商品数量
    @Update("update tb_shop set count=count+1 where book_id=#{book_id}")
   	void increaseShop(Shop shop);
    
    //减少购物车商品数量
    @Update("update tb_shop set count=count-1 where book_id=#{book_id}")
	void reduceShop(Shop shop);
	
  //删除商品
    @Delete("delete from tb_shop where book_id=#{book_id}")
	void removeShop(Shop shop);
}
	


 