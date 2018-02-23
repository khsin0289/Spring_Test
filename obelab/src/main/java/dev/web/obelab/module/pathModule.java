package dev.web.obelab.module;

public class pathModule {
	
	private String resPath;
	
	// Include(.jsp) & .CSS & .JS Path 
	public pathModule(String path1, String path2, String page) {
		// TODO Auto-generated constructor stub
		this.resPath = "/WEB-INF/views/" + path1 + "Pages/"+ path2 + page + ".jsp";
		this.toString();
	}
	
	// Controller Annotation Path
	public pathModule(String path, String page) {
		// TODO Auto-generated constructor stub
		if(path == "css" || path == "js") {
			this.resPath = "/obelab/resources/" + path + "/_" + page + "." + path;
		} else {
			this.resPath = path + "Pages/" + page;
			
		}
		this.toString();
	}
	
	public pathModule(String page) {
		this.resPath = "/WEB-INF/views/" + page + ".jsp";
		toString();
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return resPath;
	}
	
}
