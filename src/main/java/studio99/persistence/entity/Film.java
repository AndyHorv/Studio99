package studio99.persistence.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
//@Table(name="film")
public class Film implements Serializable {
	private Integer id;
	private String titre;
	private Integer date;
	private Integer duree;
	
	public Film() {
		super();
	}

	public Film(String titre, Integer date, Integer duree) {
		super();
		this.titre = titre;
		this.date = date;
		this.duree = duree;
	}

	@Override
	public String toString() {
		return "Film [id=" + id + ", titre=" + titre + ", date=" + date + ", duree=" + duree + "]";
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public Integer getDuree() {
		return duree;
	}
	public void setDuree(Integer duree) {
		this.duree = duree;
	}
	public Integer getDate() {
		return date;
	}

	public void setDate(Integer date) {
		this.date = date;
	}
}
