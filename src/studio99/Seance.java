package studio99;
import java.io.Serializable;
import java.time.LocalDate;

@Entity
@Table(name="seance")
public class Seance implements Serializable {
	private int id;
	private LocalDate timestamp;
	private int debut;
	
	public Seance(int id, LocalDate timestamp, int debut) {
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public LocalDate getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(LocalDate timestamp) {
		this.timestamp = timestamp;
	}
	public int getDebut() {
		return debut;
	}
	public void setDebut(int debut) {
		this.debut = debut;
	}
}
