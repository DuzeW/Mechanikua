package Struktura;


/**
 * @author Wiktor
 * @version 1.0
 * @created 24-cze-2024 16:21:42
 */
public class Ogloszenie {

	private double cenaNajmu;
	/**
	 * Czas rozpoczêcia og³oszenia
	 */
	private LocalTime dataStart;
	/**
	 * Czas wygasniecia co miesiac, aby zwolnic miejsce na serwerach.
	 */
	private LocalTime dataStop;
	private String nazwa;
	/**
	 * Powinnosc refreshowania ogloszenia, w celu aktualizacji ze jest to obiekt
	 * czynny. W przeciwnym wypadku jesli bedzie falsz , nastapi usuniecie ogloszenie.
	 * Co da nam zwolnienie miejsca na serwerze.
	 */
	private boolean ogloszenieRefresh;
	private String opis;
	/**
	 * Czy jest obiekt aktualnie wynajmowany czy nie.
	 */
	private StatusNajmu status;
	private String[0...10] URLZdjec;

	public Ogloszenie(){

	}

	public void finalize() throws Throwable {

	}
	/**
	 * 
	 * @param garazOgloszenie
	 */
	public void dodaj(Ogloszenie garazOgloszenie){

	}

	/**
	 * 
	 * @param garazOglosznie
	 */
	public void modyfikuj(Ogloszenie garazOglosznie){

	}

	public List<Ogloszenie> pobierz(){
		return null;
	}

	/**
	 * 
	 * @param garazOgloszenie
	 */
	public void pobierz(int, StatusNajmu garazOgloszenie){

	}

	public int wyliczOgloszenieRefresh(){
		return 0;
	}

	/**
	 * 
	 * @param garazOgloszenie
	 */
	public void zmienStatusNajmu(StatusNajmu garazOgloszenie){

	}
}//end Ogloszenie