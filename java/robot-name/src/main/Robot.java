public class Robot {
    protected String name;

    public Robot() {
        this.name = generateName();
    }

    public String getName() {
        return this.name;
    }

    public void reset() {
        this.name = generateName();
    }

    private String generateName() {

    }
}
