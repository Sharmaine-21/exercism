public class Bob {
    public String hey(String s) {
        if (isShouting(s)) {
            return "Whoa, chill out!";
        } else if (isQuestion(s)) {
            return "Sure.";
        } else if (isSilent(s)) {
            return "Fine. Be that way!";
        } else {
            return "Whatever.";
        }
    }

    private boolean isShouting(String s) {
        if ((s.toUpperCase().equals(s)) && (s.matches(".*(\\p{Alpha}+).*"))) {
            return true;
        } else {
            return false;
        }
    }

    private boolean isQuestion(String s) {
        return s.endsWith("?");
    }

    private boolean isSilent(String s) {
        return s.trim().isEmpty();
    }
}
