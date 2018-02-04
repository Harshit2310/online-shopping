package net.kzn.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
import net.kzn.shoppingbackend.dao.CategoryDAO;
import net.kzn.shoppingbackend.dto.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	private static List<Category> categories = new ArrayList<>(); 
	
	static {
		
		Category category= new Category();
		category.setId(1);
		category.setName("Television");
		category.setDescription("TV Description.");
		category.setImageUrl("CAT_1.png");
		categories.add(category);
		category= new Category();
		
		category.setId(2);
		category.setName("Second Television");
		category.setDescription("SecondTV Description.");
		category.setImageUrl("CAT_2.png");
		categories.add(category);
		category= new Category();
		
		category.setId(3);
		category.setName("Third Television");
		category.setDescription("Third Description.");
		category.setImageUrl("CAT_3.png");
		categories.add(category);	
		
	}
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}
}