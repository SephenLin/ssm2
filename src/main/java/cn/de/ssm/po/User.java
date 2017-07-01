package cn.de.ssm.po;

	public class User {
		//----------------->属性
		private String name ;
		private String password ;
		private int id ;
		private String sex ;
		
		// ---------------->get 和 set 方法
		public String getName() {
			return name;
		}
		public String getPassword() {
			return password;
		}
		public int getId() {
			return id;
		}
		public String getSex() {
			return sex;
		}
		public void setName(String name) {
			this.name = name;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public void setId(int id) {
			this.id = id;
		}
		public void setSex(String sex) {
			this.sex = sex;
		}
		
	}
