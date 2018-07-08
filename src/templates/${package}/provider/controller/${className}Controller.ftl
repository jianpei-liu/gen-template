package ${package}.controller;





/** 
 * Description: [${info}的控制器类]
 * Created on ${date}
 * @author  ${uname}
 * @version 1.0 
 * Copyright (c) ${year}
 */

@RestController
@Api()
@RequestMapping("")
public class ${className}Controller {

	private static final Logger logger = Logger.getLogger(this.getClass());

	@Resource
	private I${className}Service ${classNameLower}Service;
	

}
