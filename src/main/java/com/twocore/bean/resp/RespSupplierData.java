package com.twocore.bean.resp;

import java.util.ArrayList;
import java.util.List;

import com.twocore.model.SupplierModel;

public class RespSupplierData {
	// 实际的行数
	public int iTotalRecords;
	// 过滤之后，实际的行数。
	public int iTotalDisplayRecords;
	// 来自客户端 sEcho 的没有变化的复制品，
	public String sEcho;
	// 可选，以逗号分隔的列名，　　
	public String sColumns;
	// 数组的数组，表格中的实际数据。
	public List<SupplierModel> aaData = new ArrayList<SupplierModel>();

	public int getiTotalRecords() {
		return iTotalRecords;
	}

	public void setiTotalRecords(int iTotalRecords) {
		this.iTotalRecords = iTotalRecords;
	}

	public int getiTotalDisplayRecords() {
		return iTotalDisplayRecords;
	}

	public void setiTotalDisplayRecords(int iTotalDisplayRecords) {
		this.iTotalDisplayRecords = iTotalDisplayRecords;
	}

	public String getsEcho() {
		return sEcho;
	}

	public void setsEcho(String sEcho) {
		this.sEcho = sEcho;
	}

	public String getsColumns() {
		return sColumns;
	}

	public void setsColumns(String sColumns) {
		this.sColumns = sColumns;
	}

	public List<SupplierModel> getAaData() {
		return aaData;
	}

	public void setAaData(List<SupplierModel> aaData) {
		this.aaData = aaData;
	}

}
