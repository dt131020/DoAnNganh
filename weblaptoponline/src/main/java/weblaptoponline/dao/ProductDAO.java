package weblaptoponline.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import weblaptoponline.entity.Product;

public interface ProductDAO extends JpaRepository<Product, Integer> {

	@Query("SELECT p FROM Product p WHERE p.category.id=?1")
	List<Product> findByCategoryId(Integer id);
	
	@Query("SELECT p FROM Product p WHERE p.name LIKE ?1")
	List<Product> findBKeywords(String keywords);
	
	@Query("SELECT p FROM Product p WHERE p.id=?1")
	List<Product> getProductById(Integer id);

	@Query("SELECT DISTINCT d.product FROM OrderDetail d "
			+ " WHERE d.order.account.username=?1")
	List<Product> findByUsername(String username);
	
	@Query("SELECT p FROM Product p WHERE p.discount != 0")
	List<Product> getProductSaling();
	
	@Query("SELECT p FROM Product p WHERE p.unitPrice>?1 and p.unitPrice <?2")
	List<Product> findByUnitPrice(Double min,Double max);
	
	@Query("SELECT p FROM Product p ORDER  BY p.productDate DESC ")
	List<Product> geProductByDay();
	
	
	

//
//	@Query("SELECT p FROM Product p "
//			+ " WHERE p.name LIKE ?1 "
//			+ " OR p.category.name LIKE ?1 "
//			+ " OR p.category.nameVn LIKE ?1")
//	List<Product> findByKeywords(String keywords);
//

}
