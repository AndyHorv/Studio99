package studio99.persistence.entity;

public class Place {
	private Integer id;
	private boolean disponible;
	
	public Place() {
		super();
	}
	
	public Place(Integer id, boolean disponible) {
		super();
		this.id = id;
		this.disponible = disponible;
	}

	@Override
	public String toString() {
		return "Place [id=" + id + ", disponible=" + disponible + "]";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public boolean isDisponible() {
		return disponible;
	}

	public void setDisponible(boolean disponible) {
		this.disponible = disponible;
	}

}
