package com.ibm.gbs.gbs_cai_web.vo;

import org.springframework.stereotype.Repository;

@Repository("filevo")
public class FileVO {
	private String file_nm;
	private String file_id;

	public FileVO() {

	}

	public FileVO(String file_nm) {
		super();
		this.file_nm = file_nm;

	}

	public FileVO(String file_id, String file_nm) {
		super();
		this.file_nm = file_nm;
		this.file_id = file_id;
	}

	public String getFile_nm() {
		return file_nm;
	}

	public void setFile_nm(String file_nm) {
		this.file_nm = file_nm;
	}

	public String getFile_id() {
		return file_id;
	}

	public void setFile_id(String file_id) {
		this.file_id = file_id;
	}

}
