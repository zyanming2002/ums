/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/cd/ums">Ums</a> All rights reserved.
 */
package com.cd.ums.modules.sys.dao;

import com.cd.ums.common.persistence.TreeDao;
import com.cd.ums.common.persistence.annotation.MyBatisDao;
import com.cd.ums.common.persistence.TreeDao;
import com.cd.ums.common.persistence.annotation.MyBatisDao;
import com.cd.ums.modules.sys.entity.Office;

/**
 * 机构DAO接口
 * @author ThinkGem
 * @version 2014-05-16
 */
@MyBatisDao
public interface OfficeDao extends TreeDao<Office> {
	
}
