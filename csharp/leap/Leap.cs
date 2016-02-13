//using System;

public class Year {

	public Year() {
	}

	public static bool IsLeap(int year) {
		if (year % 400 == 0) {
			return true;
		} else if ((year % 4 == 0) && (year % 100 != 0)) {
			return true;
		} else {
			return false;
		}
	}

}

