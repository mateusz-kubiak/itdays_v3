package net.atos.itdays.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

@Entity 
public class Lecture {

	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "LECTURE_ID", nullable = false)
    private Long lectureId;
	
	private String topic;
	private String place;
	private String date;
	private Long speakerId;
	
	@Transient
	private String stringDate;

	public Long getLectureId() {
		return lectureId;
	}

	public void setLectureId(Long lectureId) {
		this.lectureId = lectureId;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	
	public Long getSpeakerId() {
		return speakerId;
	}

	public void setSpeakerId(Long speakerId) {
		this.speakerId = speakerId;
	}
	
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
	public String getStringDate() {
		stringDate = date.replace("T", " ");
		return stringDate;
	}

	public void setStringDate(String stringDate) {
		this.stringDate = stringDate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((date == null) ? 0 : date.hashCode());
		result = prime * result + ((lectureId == null) ? 0 : lectureId.hashCode());
		result = prime * result + ((place == null) ? 0 : place.hashCode());
		result = prime * result + ((speakerId == null) ? 0 : speakerId.hashCode());
		result = prime * result + ((topic == null) ? 0 : topic.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Lecture other = (Lecture) obj;
		if (date == null) {
			if (other.date != null)
				return false;
		} else if (!date.equals(other.date))
			return false;
		if (lectureId == null) {
			if (other.lectureId != null)
				return false;
		} else if (!lectureId.equals(other.lectureId))
			return false;
		if (place == null) {
			if (other.place != null)
				return false;
		} else if (!place.equals(other.place))
			return false;
		if (speakerId == null) {
			if (other.speakerId != null)
				return false;
		} else if (!speakerId.equals(other.speakerId))
			return false;
		if (topic == null) {
			if (other.topic != null)
				return false;
		} else if (!topic.equals(other.topic))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Lecture [lectureId=" + lectureId + ", topic=" + topic + ", place=" + place + ", date=" + date
				+ ", speakerId=" + speakerId + "]";
	}
	
}
