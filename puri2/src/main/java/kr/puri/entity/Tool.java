package kr.puri.entity;

public class Tool {
	int tool_seq;
	String tool_group;
	String tool_name;
	String tool_info;
	String tool_img;
	
	public Tool() {}
	
	public Tool(int tool_seq, String tool_group, String tool_name, String tool_info, String tool_img) {
		this.tool_seq = tool_seq;
		this.tool_group = tool_group;
		this.tool_name = tool_name;
		this.tool_info = tool_info;
		this.tool_img = tool_img;
	}

	public int getTool_seq() {
		return tool_seq;
	}

	public void setTool_seq(int tool_seq) {
		this.tool_seq = tool_seq;
	}

	public String getTool_group() {
		return tool_group;
	}

	public void setTool_group(String tool_group) {
		this.tool_group = tool_group;
	}

	public String getTool_name() {
		return tool_name;
	}

	public void setTool_name(String tool_name) {
		this.tool_name = tool_name;
	}

	public String getTool_info() {
		return tool_info;
	}

	public void setTool_info(String tool_info) {
		this.tool_info = tool_info;
	}

	public String getTool_img() {
		return tool_img;
	}

	public void setTool_img(String tool_img) {
		this.tool_img = tool_img;
	}
	
	

}
