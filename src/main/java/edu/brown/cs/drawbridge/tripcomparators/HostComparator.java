package edu.brown.cs.drawbridge.tripcomparators;

import edu.brown.cs.drawbridge.models.Trip;

import java.util.List;

/**
 * A comparator that compares Lists of Trips based on how many Trips are hosted
 * by the User.
 *
 * @author Jeffrey Zhu
 */
public class HostComparator implements ComparesSearchedTrips {

  private String userId;

  @Override public void setUserId(String userIdentification) {
    userId = userIdentification;
  }

  @Override public int compare(List<Trip> path1, List<Trip> path2) {
    int numberOfTripsHosted1 = 0;
    int numberOfTripsHosted2 = 0;
    for (Trip trip : path1) {
      if (trip.getHostId().equals(userId)) {
        numberOfTripsHosted1++;
      }
    }
    for (Trip trip : path2) {
      if (trip.getHostId().equals(userId)) {
        numberOfTripsHosted2++;
      }
    }
    return Integer.compare(numberOfTripsHosted2, numberOfTripsHosted1);
  }
}
