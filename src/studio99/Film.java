package studio99;

public class Film {
	private int id;
	private String titre;
	private int duree;
	
	public Film(int id, String titre, int duree) {
		super();
		this.id = id;
		this.titre = titre;
		this.duree = duree;
	}
	
	@Override
	public String toString() {
		return "Film [id=" + id + ", titre=" + titre + ", duree=" + duree + "]";
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public int getDuree() {
		return duree;
	}
	public void setDuree(int duree) {
		this.duree = duree;
	}
	
}
