package com.twocore.bean.resp;

import com.fasterxml.jackson.annotation.JsonProperty;

public class AttributeBean {
	@JsonProperty(value="颜色")
	public String a="";
	@JsonProperty(value="尺寸")
	public String b="";
	@JsonProperty(value="框高")
	public String c="";
	@JsonProperty(value="")
	public String d="";
	@JsonProperty(value="")
	public String e="";
	public String getA() {
		return a;
	}
	public void setA(String a) {
		this.a = a;
	}
	public String getB() {
		return b;
	}
	public void setB(String b) {
		this.b = b;
	}
	public String getC() {
		return c;
	}
	public void setC(String c) {
		this.c = c;
	}
	public String getD() {
		return d;
	}
	public void setD(String d) {
		this.d = d;
	}
	public String getE() {
		return e;
	}
	public void setE(String e) {
		this.e = e;
	}
}
