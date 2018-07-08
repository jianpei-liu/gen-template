package ${package}.impl;

import org.springframework.stereotype.Service;
import ${package}.api.exception.base.BusinessException;

/**
 * <p>Discription:[${info}服务接口实现类]</p>
 * Created on ${date}
 * @author ${uname}
 */
@Service("${classNameLower}Service")
public class ${className}ServiceImpl implements I${className}Service {

	@Resource
	private ${className}Mapper ${classNameLower}Mapper;

    @Override
    public PageInfo<${className}> queryByPage(Paging page, ${className} ${classNameLower}) throws BusinessException {
        // 执行分页查询
        PageHelper.startPage(page.getPageNum(), page.getPageSize(), page.getOrderBy());
        List<${className}> list = ${classNameLower}Mapper.findList(${classNameLower});
        return new PageInfo<>(list);
    }

    @Override
    public ${className} selectOneByCondition(${className} ${classNameLower}) throws BusinessException {
        return ${classNameLower}Mapper.selectOneByCondition(${classNameLower});
    }

    @Override
    public List<${className}> findAllByCondition(${className} ${classNameLower}) throws BusinessException {
        List<${className}> list = ${classNameLower}Mapper.findList(${classNameLower});
        return list;
    }

    @Override
    public List<${className}> findAll() throws BusinessException {
        List<${className}> allList = ${classNameLower}Mapper.findList(new ${className}());
        return allList;
    }

    @Override
    public ${className} queryById(String id) throws BusinessException {
        ${className} ${classNameLower} = ${classNameLower}Mapper.get(id);
        return ${classNameLower};
    }

    @Override
    public boolean save(${className} ${classNameLower}) throws BusinessException{
        return ${classNameLower}Mapper.insert(${classNameLower}) > 0;
    }

    @Override
    public boolean update(${className} ${classNameLower}) throws BusinessException{
        return ${classNameLower}Mapper.update(${classNameLower}) > 0;
    }

    @Override
    public boolean deleteById(String id) throws BusinessException {
        ${className} ${classNameLower} = new ${className}();
        ${classNameLower}.setId(id);
        ${classNameLower}.setDelFlag(2);
        return ${classNameLower}Mapper.update(${classNameLower}) > 0;
    }

}