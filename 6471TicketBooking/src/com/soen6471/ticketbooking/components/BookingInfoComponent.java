/**
 * 
 */
package com.soen6471.ticketbooking.components;

/**
 * @author fly
 *
 */
public class BookingInfoComponent {
	MovieComponent movie;
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
	 * @return the screen
	 */
	public ScreenComponent getScreen() {
		return screen;
	}
	/**
	 * @param screen the screen to set
	 */
	public void setScreen(ScreenComponent screen) {
		this.screen = screen;
	}
	/**
	 * @return the user
	 */
	public UserComponent getUser() {
		return user;
	}
	/**
	 * @param user the user to set
	 */
	public void setUser(UserComponent user) {
		this.user = user;
	}
	/**
	 * @return the showTime
	 */
	public int getShowTime() {
		return showTime;
	}
	/**
	 * @param showTime the showTime to set
	 */
	public void setShowTime(int showTime) {
		this.showTime = showTime;
	}
	ScreenComponent screen;
	UserComponent user;
	int showTime;
	

}
