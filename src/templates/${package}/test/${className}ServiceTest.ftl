package ${package};


import org.springframework.util.Assert;

/** 
 * Description: [${info}的单元测试]
 * Created on ${date}
 * @author  ${uname}
 * @version 1.0 
 * Copyright (c) ${year}
 */

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class ${className}ServiceTest{

	@Autowired
	private I${className}Service ${classNameLower}Service;
	
	@Test
	public void queryByPageTest(){
		Paging paging = new Paging(2,2);
		${className} ${classNameLower} = new ${className}();

		PageInfo<${className}> result = this.${classNameLower}Service.queryByPage(paging,${classNameLower});
		Assert.notEmpty(result.getList(), "分页条件查找全部结果不为空！");
	}
	
	@Test
	public void selectOneByConditionTest(){
		${className} ${classNameLower} = new ${className}();

		${className} result = this.${classNameLower}Service.selectOneByCondition(${classNameLower});
		Assert.notNull(result, "条件查找一个成功！");
	}

	@Test
	public void findAllByConditionTest(){
		${className} ${classNameLower} = new ${className}();

		List<${className}> list = this.${classNameLower}Service.findAllByCondition(${classNameLower});
		Assert.notEmpty(list, "条件查找全部结果不为空！");
	}

	@Test
	public void findAllTest(){
		List<${className}> list = this.${classNameLower}Service.findAll();
		Assert.notEmpty(list, "查找全部结果不为空！");
	}

	@Test
	public void queryByIdTest(){
		${className} result = this.${classNameLower}Service.queryById("10");
		Assert.notNull(result, "根据id查找成功！");
	}

	@Test
	public void saveTest(){
		${className} ${classNameLower} = new ${className}();

		boolean result = this.${classNameLower}Service.save(${classNameLower});
		Assert.isTrue(result, "保存成功！");
	}

	@Test
	public void updateTest(){
		${className} ${classNameLower} = new ${className}();

		boolean result = this.${classNameLower}Service.update(${classNameLower});
		Assert.isTrue(result, "更新成功！");
	}

	@Test
	public void deleteByIdTest(){
		boolean result = this.${classNameLower}Service.deleteById(id);
		Assert.isTrue(result, "逻辑删除成功！");
	}
}