package ${package}.api.service.${model_package_name};

import ${package}.api.exception.base.BusinessException;

/**
 * <p>Discription:[${info}服务接口]</p>
 * Created on ${date}
 * @author ${uname}
 */
public interface I${className}Service {

 	/**
     * 分页查询
     * @param page
     * @param ${classNameLower}
     * @return
     * @throws BusinessException
     */
    PageInfo<${className}> queryByPage(Paging page, ${className} ${classNameLower}) throws BusinessException;
	
	/**
     * 根据条件查询one
     * @param ${classNameLower}
     * @return
     * @throws BusinessException
     */
	${className} selectOneByCondition(${className} ${classNameLower});

    /**
     * 根据条件查询所有
     * @param ${classNameLower}
     * @return
     * @throws BusinessException
     */
    List<${className}> findAllByCondition(${className} ${classNameLower});

	/**
     * 查询所有
     * @param
     * @return
     * @throws BusinessException
     */
    List<${className}> findAll() throws BusinessException;

	/**
     * 根据ID查询
     * @param id
     * @return
     * @throws BusinessException
     */
	${className} queryById(String id) throws BusinessException;

	/**
     * 新增
     * @param ${classNameLower}
     * @return
     * @throws BusinessException
     */
    boolean save(${className} ${classNameLower}) throws BusinessException;

	/**
     * 更新
     * @param ${classNameLower}
     * @return
     * @throws BusinessException
     */
    boolean update(${className} ${classNameLower}) throws BusinessException;

	/**
     * 根据ID删除
     * @param id
     * @return
     * @throws BusinessException
     */
    boolean deleteById(String id) throws BusinessException;

}
