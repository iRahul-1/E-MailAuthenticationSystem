package com.mvcproj.entity;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Entity
@Table(name = "User_Registration_db")
@Data
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
public class UserRegistration {
	@Id
	@SequenceGenerator(allocationSize = 1,name = "gen1",initialValue = 1,sequenceName = "generator_1")
	@GeneratedValue(generator = "gen1", strategy = GenerationType.SEQUENCE)
	private Integer id;
	@NonNull
	@Column(length=30)
	private String userName;
	@NonNull
	@Column(length=20)
	private String password;
	@NonNull
	@Column(length=30)
	private String eMail;
	@NonNull
	@Column(length=20)
	private String birthDay;
	@NonNull
	@Column(length=40)
	private String profession;
}
