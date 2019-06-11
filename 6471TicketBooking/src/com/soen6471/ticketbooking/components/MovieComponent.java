/**
 * 
 */
package com.soen6471.ticketbooking.components;

/**
 * @author fly
 *
 */
public class MovieComponent {
	int movieId;
	String movieName;
	String description;
	int movieLength;
	/**
	 * @return the movieId
	 */
	public int getMovieId() {
		return movieId;
	}
	/**
	 * @param movieId the movieId to set
	 */
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	/**
	 * @return the movieName
	 */
	public String getMovieName() {
		return movieName;
	}
	/**
	 * @param movieName the movieName to set
	 */
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * @return the movieLength
	 */
	public int getMovieLength() {
		return movieLength;
	}
	/**
	 * @param movieLength the movieLength to set
	 */
	public void setMovieLength(int movieLength) {
		this.movieLength = movieLength;
	}
}
