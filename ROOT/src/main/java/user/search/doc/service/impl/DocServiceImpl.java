package user.search.doc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.search.doc.service.DocService;

@Service
public class DocServiceImpl implements DocService {

	@Autowired
	private DocDAO dao;
	
}
