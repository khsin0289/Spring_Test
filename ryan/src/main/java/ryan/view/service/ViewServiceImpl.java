package ryan.view.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ryan.view.dao.ViewDao;

@Service("ViewService")
public class ViewServiceImpl implements ViewService{
	@Resource(name="ViewDAO")
	private ViewDao viewServiceDao;

}
