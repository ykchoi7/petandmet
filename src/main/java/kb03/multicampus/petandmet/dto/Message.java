package kb03.multicampus.petandmet.dto;
public class Message {

    private String msg;
    private String sentAt;
    private String sentBy;
    public Message() {
    }

    public Message(String msg) {
        this.msg = msg;
    }

    public Message(String sentAt, String sentBy, String msg) {
        this.sentAt = sentAt;
        this.sentBy = sentBy;
        this.msg = msg;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
    public String getSentAt() {
        return sentAt;
    }

    public void setSentAt(String sentAt) {
        this.sentAt = sentAt;
    }

    public String getSentBy() {
        return sentBy;
    }

    public void setSentBy(String sentBy) {
        this.sentBy = sentBy;
    }


}