package main.PF.dto.connection;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

//document와 매핑될 객체를 정의 - 도메인 클래스라 칭함
@Document(collection="connection")
public class ConnectionDTO {
	@Id
	String _id;
	int value;
	
	public ConnectionDTO() {}
	public ConnectionDTO(String _id, int value) {
		super();
		this._id = _id;
		this.value = value;
	}
	
	public String get_id() {
		return _id;
	}
	public void set_id(String _id) {
		this._id = _id;
	}
	public int getValue() {
		return value;
	}
	public void setValue(int value) {
		this.value = value;
	}
	
	
}
