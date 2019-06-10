/**
 * 
 */
package com.soen6471.ticketbooking.components;

/**
 * @author fly
 *
 */
public class ScreenComponent {
    MovieComponent movie;
    int screenId;
	/**
	 * @return the movie
	 */
	public MovieComponent getMovie() {
		return movie;
	}
	/**
	 * @param movie the movie to set
	 */
	public void setMovie(MovieComponent movie) {
		this.movie = movie;
	}
	/**
	 * @return the screenId
	 */
	public int getScreenId() {
		return screenId;
	}
	/**
	 * @param screenId the screenId to set
	 */
	public void setScreenId(int screenId) {
		this.screenId = screenId;
	}
}
