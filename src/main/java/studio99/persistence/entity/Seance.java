package studio99.persistence.entity;
import java.io.Serializable;
import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
//@Table(name="seance")
public class Seance implements Serializable {
	private Integer id;
	private LocalDate timestamp;
	private Integer debut;
	
	public Seance(Integer id, LocalDate timestamp, Integer debut) {
		super();
		this.id = id;
		this.timestamp = timestamp;
		this.debut = debut;
	}
	
	@Override
	public String toString() {
		return "Seance [id=" + id + ", timestamp=" + timestamp + ", debut=" + debut + "]";
	}
	
	@Id
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public LocalDate getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(LocalDate timestamp) {
		this.timestamp = timestamp;
	}
	public Integer getDebut() {
		return debut;
	}
	public void setDebut(Integer debut) {
		this.debut = debut;
	}
}
