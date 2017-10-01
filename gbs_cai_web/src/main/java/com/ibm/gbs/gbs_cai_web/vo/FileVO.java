package com.ibm.gbs.gbs_cai_web.vo;

import org.springframework.stereotype.Repository;

@Repository("filevo")
public class FileVO {
	private String file_nm;
	private String file_size;
	private String file_id;

	public FileVO(String file_nm, String file_size, String file_id) {
		super();
		this.file_nm = file_nm;
		this.file_size = file_size;
		this.file_id = file_id;
	}
	
	public FileVO() {
		
	}

}
