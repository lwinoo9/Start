package model;

import lombok.*;

@Setter
@Getter
public class UserSubject {
	private String name;
	private String dob;
	private String gender;
	private String[] knowledge;
	private String backend;

	public String getKnowledges() {
		if (knowledge == null)
			return "";

		return String.join(", ", knowledge);
	}

}
