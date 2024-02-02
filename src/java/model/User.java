package model;

public class User {
    private int id;
    private String namaInstansi;
    private String email;
    private String username;
    private String password;
    private String noTlp;
    private int role;
    private int loggedIn;

    // Constructors
    public User() {
    }

    public User(int id, String namaInstansi, String email, String username, String password, String noTlp,
                int role, int loggedIn) {
        this.id = id;
        this.namaInstansi = namaInstansi;
        this.email = email;
        this.username = username;
        this.password = password;
        this.noTlp = noTlp;
        this.role = role;
        this.loggedIn = loggedIn;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNamaInstansi() {
        return namaInstansi;
    }

    public void setNamaInstansi(String namaInstansi) {
        this.namaInstansi = namaInstansi;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNoTlp() {
        return noTlp;
    }

    public void setNoTlp(String noTlp) {
        this.noTlp = noTlp;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public int getLoggedIn() {
        return loggedIn;
    }

    public void setLoggedIn(int loggedIn) {
        this.loggedIn = loggedIn;
    }
}
